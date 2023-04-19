import string

from Classes.Database.DatabaseHandler import DatabaseHandler, get_database, create_insert_query
from Classes.Utils.Utils import STAT_NAMES, StatType, EssenceTiers140

database = get_database()


class ItemTooltip:
    def __init__(self, text, position):
        print(text)
        self.text = text
        self.name = self.find_name()
        self.essence_slots = self.find_essence_slots()
        self.item_level, self.item_level_index = self.find_item_level()
        self.stats, self.raw_stats = self.find_item_stats(self.item_level_index)
        self.essence_value = self.get_essence_value()
        self.start = position[0]
        self.end = position[1]

    def __str__(self):
        return f"""Name: {self.name}
Item Level: {self.item_level}
Essences: {self.essence_slots}
Stats: {self.stats}
Raw Stats: {self.raw_stats}
Essence Value: {self.essence_value}
"""

    def add_to_database(self):
        if "ESSENCE OF" in self.name:
            split_name = self.name.split(" ")
            tier_separator_index = split_name.index('ESSENCE')
            essence_tier = EssenceTiers140[str.join("_", split_name[:tier_separator_index]).replace('\'', "")].value
            stat_name = str.join(' ', split_name[tier_separator_index + 2:]).title()

            if stat_name in DatabaseHandler.mappings.get("MAIN_STATS"):
                stat_type = StatType.MAIN
                stat_amount = self.stats[stat_name]

            else:
                stat_type = StatType.RAW
                # Some essences dont share stat name
                if stat_name == 'Evasion':
                    stat_name = 'Evade'

                if stat_name == 'Healing':
                    stat_name = 'Outgoing Healing'

                if stat_name == 'Restoration':
                    stat_name = 'Incoming Healing'

                if stat_name not in self.raw_stats.keys():
                    stat_name += ' Rating'
                stat_amount = self.raw_stats[stat_name]

            stat_id = DatabaseHandler.mappings.get(f"{stat_type.name}_STATS").get(stat_name)
            stat_type_id = stat_type.value
            database.execute_insert(*create_insert_query('ESSENCES',
                                                         ['tier_id', 'stat_amount', 'stat_id', 'stat_type_id'],
                                                         [essence_tier, stat_amount, stat_id, stat_type_id]))

        else:
            item_id = database.execute_insert(*create_insert_query("ITEMS",
                                                                   ["item_name", "item_level", "essence_value"],
                                                                   [self.name, self.item_level, self.essence_value],
                                                                   True
                                                                   ))
            if item_id is not None and item_id != 0:
                for stat_name, stat_value in self.stats.items():
                    if stat_name in DatabaseHandler.mappings.get(f'MAIN_STATS'):
                        stat_type = StatType.MAIN
                    else:
                        stat_type = StatType.RAW

                    stat_name_id = DatabaseHandler.mappings.get(f'{stat_type.name}_STATS').get(stat_name)
                    stat_type_id = stat_type.value
                    database.execute_insert(*create_insert_query("ITEM_STATS",
                                                                 ['item_id', 'stat_id', 'stat_type', 'stat_amount'],
                                                                 [item_id, stat_name_id, stat_type_id,
                                                                  stat_value]))

    def convert_main_stat_to_raw_stats(self, class_name, main_stat_id, main_stat_amount, raw_stats):
        class_id = database.execute_select("SELECT id FROM classes WHERE class_name LIKE %s", class_name)[0]
        raw_stat_query = "SELECT raw_stat_id, amount FROM Main_Stats_To_Raw_Stats WHERE class_id = %s AND main_stat_id = %s"

        main_stat_to_raw_stats = database.execute_select(raw_stat_query, class_id, main_stat_id)
        for values in main_stat_to_raw_stats:
            # Gets Dict Key From Value

            raw_stat_name = list(DatabaseHandler.mappings.get('RAW_STATS').keys())[
                list(DatabaseHandler.mappings.get('RAW_STATS').values()).index(values[0])]

            if raw_stat_name in raw_stats.keys():
                raw_stats[raw_stat_name] += values[1] * main_stat_amount
            else:
                raw_stats[raw_stat_name] = values[1] * main_stat_amount

        return raw_stats

    def get_essence_value(self):
        total_essence_slices = 0
        for stat_name, amount in self.raw_stats.items():
            # ToDo: Weights, User Input
            essence_value = DatabaseHandler.essence_values.get(stat_name)
            total_essence_slices += round(amount / essence_value, 4)

        return round(total_essence_slices + self.essence_slots, 4)

    def find_name(self):
        name = []
        index_found = False
        index = 0
        while not index_found and index < len(self.text):
            string = self.text[index]
            if "Unique Use" in string or "Crafted by" in string or "Bound to" in string or "Bind to" in string or "Item Level" in string:
                first_index_after_name = self.text.index(string)
                name = self.text[:first_index_after_name]
                index_found = True
            index += 1

        if "Equipped" in self.text[0]:
            name = name[1:]

        return ' '.join(name).title() or None

    def find_essence_slots(self):
        amount_of_slots = 0
        for string in self.text:
            if "Disenchants into" in string:
                break

            # ToDo: Some long name essences have the essence word cut off. Need a workaround (Maybe using the Slots Border Position?)
            if "EMPTY SLOT" in string or "ESSENCE" in string:
                amount_of_slots += 1

        return amount_of_slots

    def find_item_level(self):
        item_level = ''
        for string in self.text:
            if "Item Level" in string:
                item_level = string.replace("Item Level", "").strip()
                index = self.text.index(string)

        return item_level, index

    def remove_unwanted_characters(self, text):
        return text.translate(str.maketrans("", "", "+-*,." + string.digits)).strip()

    def find_item_stats(self, item_level_index):
        stats = {}
        raw_stats = {}


        # ToDo: Add Maximum Morale to Raw_Stats. (Formula = (1 / ((Vitality Essence Contrib - Raw_Stat Essence Contrib) / Morale Per Vitality))
        for index in range(item_level_index, len(self.text)):
            # Remove All Numbers/Symbols from String. Only Stat Name Remains
            letters_only_text = self.remove_unwanted_characters(self.text[index])
            letters_only_text_and_next_row = letters_only_text + ' ' + self.remove_unwanted_characters(
                self.text[index + 1])

            if letters_only_text in STAT_NAMES:
                stat = STAT_NAMES[STAT_NAMES.index(letters_only_text)]

            elif letters_only_text_and_next_row in STAT_NAMES:
                stat = STAT_NAMES[STAT_NAMES.index(letters_only_text_and_next_row)]

            else:
                # ToDo: Same issue as described in get_essence_slots
                if "ESSENCE" in self.text[index] or "EMPTY SLOT" in self.text[index]:
                    break
                continue

            amount = self.text[index].replace(letters_only_text, '').replace('+', '').replace(',', '').strip()
            stats[stat] = int(amount)

            # Vit Treated as Raw Stat
            if stat in DatabaseHandler.mappings.get("MAIN_STATS") and stat != 'Vitality':
                stat_type = StatType.MAIN
                stat_name_id = DatabaseHandler.mappings.get(f'{stat_type.name}_STATS').get(stat)

                # ToDo: Plugin Companion, Current Character Class (Or Class Selector)
                raw_stats = self.convert_main_stat_to_raw_stats('Hunter', stat_name_id, int(amount), raw_stats)

            else:
                stat_type = StatType.RAW
                if stat in raw_stats.keys():
                    raw_stats[stat] += int(amount)

                else:
                    raw_stats[stat] = int(amount)

        return stats, raw_stats
