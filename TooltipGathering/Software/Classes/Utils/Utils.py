from enum import Enum

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


def has_number(string):
    for char in string:
        if char.isdigit():
            return True
        return False


class StatType(Enum):
    RAW = 1
    MAIN = 2


class EssenceTiers140(Enum):
    HUMBLE_DELVERS = 1
    FLICKERING_DELVERS = 2
    LIVELY_DELVERS = 3
    VIVID_DELVERS = 4


def get_key_from_dictionary(dictionary, value):
    return list(dictionary.keys())[
        list(dictionary.values()).index(value)]

