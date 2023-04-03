from Classes.Database import DatabaseHandler
from Classes.Utils.Utils import STAT_NAMES

database = DatabaseHandler.DatabaseHandler()

class ItemTooltip:
    def __init__(self, text):
        self.text = text
        self.name = self.find_name()
        self.essence_slots = self.find_essence_slots()
        self.item_level, self.item_level_index = self.find_item_level()
        self.stats = self.find_item_stats(self.item_level_index)

    def __str__(self):
        return f"""Name: {self.name}
Essences: {self.essence_slots}
Stats: {self.stats}"""

    def add_to_database(self):
        essence_slices = self.get_essence_value()
        for stat_name, value in self.stats.items():

            if stat_name in DatabaseHandler.DatabaseHandler.mappings.get("MAIN_STATS"):
                stat_type = "Main"
            else:
                stat_type = "Raw"

            stat_name_id = DatabaseHandler.DatabaseHandler.mappings.get(f'{stat_type.upper()}_STATS').get
            stat_type_id = DatabaseHandler.DatabaseHandler.mappings.get('STAT_TYPES').get(stat_type)

            database.execute_insert(DatabaseHandler.
                                    create_insert_query("ITEM_STATS",
                                                        ['item_name', 'stat_id', 'stat_type', 'essence_value'],
                                                        [self.name, stat_name_id, stat_type_id, essence_slices]))

    def get_essence_value(self):
        total_essence_slices = 0
        for stat_name, amount in self.stats.items():
            essence_value = DatabaseHandler.DatabaseHandler.essence_values.get(stat_name)

            total_essence_slices += round(amount / essence_value, 2)

        return total_essence_slices

    def find_name(self):
        name = []
        index_found = False
        index = 0
        while not index_found and index < len(self.text):
            string = self.text[index]
            if "Unique Use" in string or "Crafted by" in string or "Bound to" in string or "Item Level" in string:
                first_index_after_name = self.text.index(string)
                name = self.text[:first_index_after_name]
                index_found = True
            index += 1

        if "Equipped" in self.text[0]:
            name = name[1:]

        return ' '.join(name) or None

    def find_essence_slots(self):
        amount_of_slots = 0
        for string in self.text:
            if "Disenchants into" in string:
                break

            if "EMPTY SLOT" in string or "ESSENCE" in string:
                amount_of_slots += 1

        return amount_of_slots

    def find_item_level(self):
        item_level = ''
        for string in self.text:
            if "Item Level" in string:
                item_level = string
                index = self.text.index(string)

        return item_level, index

    def find_item_stats(self, item_level_index):
        stats = {}

        for index in range(item_level_index, len(self.text)):
            for STAT in STAT_NAMES:
                if STAT in self.text[index]:
                    stats[STAT] = self.text[index].replace(STAT, '').replace('+', '').replace(',', '').strip()

            if "ESSENCE" in self.text[index] or "EMPTY SLOT" in self.text[index]:
                break

        return stats
