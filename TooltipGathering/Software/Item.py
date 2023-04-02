from database import database

class Item:
    def __init__(self, normal_text):
        self.name = find_name(normal_text)
        self.essence_slots = find_essence_slots(normal_text)
        self.item_level, self.item_level_index = find_item_level(normal_text)
        self.stats = find_item_stats(normal_text, self.item_level_index)

    def __str__(self):
        return f"""Name: {self.name}
Essences: {self.essence_slots}
Stats: {self.stats}"""


def add_to_database(self):
    for stat_name, value in self.stats.items():

        if stat_name in database.database_mappings.get("MAIN_STATS"):
            stat_type = "Main"
        else:
            stat_type = "Raw"

        stat_name_id = database.database_mappings.get(f'{stat_type.upper()}_STATS').get
        stat_type_id = database.database_mappings.get('STAT_TYPES').get(stat_type)

    # 
    #     database.execute_insert(DatabaseHandler.
    #                             create_insert_query("ITEM_STATS",
    #                                                 [item_name, stat_id, stat_type],
    #                                                 [, stat_name_id, stat_type_id]))
    #
    # def get_essence_value(self):
    #     for stat_name, value in self.stats.items():



STAT_NAMES = [
    'Armour',
    'Might',
    'Agility',
    'Vitality',
    'Will',
    'Fate',
    'Critical Rating',
    'Finesse Rating',
    'Physical Mastery Rating',
    'Tactical Mastery Rating',
    'Physical Mitigation',
    'Tactical Mitigation',
    'Critical Defence',
    'Block Rating',
    'Parry Rating',
    'Evade Rating',
    'Outgoing Healing Rating',
    'Incoming Healing Rating',
    'Resistance Rating',
]


def find_name(text):
    name = []
    index_found = False
    index = 0
    while not index_found and index < len(text):
        string = text[index]
        if "Unique Use" in string or "Crafted by" in string or "Bound to" in string or "Item Level" in string:
            first_index_after_name = text.index(string)
            name = text[:first_index_after_name]
            index_found = True
        index += 1

    if "Equipped" in text[0]:
        name = name[1:]

    return ' '.join(name) or None


def find_essence_slots(text):
    amount_of_slots = 0
    for string in text:
        if "Disenchants into" in string:
            break

        if "EMPTY SLOT" in string or "ESSENCE" in string:
            amount_of_slots += 1

    return amount_of_slots


def find_item_level(text):
    item_level = ''
    for string in text:
        if "Item Level" in string:
            item_level = string
            index = text.index(string)

    return item_level, index


def find_item_stats(text, item_level_index):
    stats = {}

    for index in range(item_level_index, len(text)):
        for STAT in STAT_NAMES:
            if STAT in text[index]:
                stats[STAT] = text[index].replace(STAT, '').replace('+', '').replace(',', '').strip()

        if "ESSENCE" in text[index] or "EMPTY SLOT" in text[index]:
            break

    return stats


def has_number(string):
    for char in string:
        if char.isdigit():
            return True
    return False
