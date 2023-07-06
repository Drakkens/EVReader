import os
import subprocess
import sys

from ..Data.Classes import *
from ..Data.Essences import *


#ToDo: Move to Essences
def calculate_morale_essence_value(essence_tier=3):
    essence_values_per_class = {}

    vitality_essence_value = EssenceTiers140["TIER"+str(essence_tier)].value.get('Vitality')

    for class_name, class_id in CLASSES.items():
        class_name = class_name.replace("-", "").upper()

        vitality_raw_stats = globals()[class_name+"_STATS"].get('Vitality')

        # Initial Value - To be modified depending on other Raw Stats.
        vitality_morale_contribution = 1
        for values in vitality_raw_stats.items():
            stat_name = values[0]
            stat_amount_per_point = values[1]

            if stat_name == 'Maximum Morale':  # Skip Morale Stat.
                continue

            essence_slice_value = (vitality_essence_value * stat_amount_per_point) / \
                                  EssenceTiers140["TIER"+str(essence_tier)].value.get(stat_name)

            vitality_morale_contribution -= essence_slice_value

        morale_per_vitality_point = globals()[class_name+"_STATS"].get('Vitality').get('Maximum Morale')

        essence_per_morale_point = vitality_morale_contribution / (EssenceTiers140["TIER"+str(essence_tier)].value.get('Vitality') * morale_per_vitality_point)
        morale_per_one_essence = 1 / essence_per_morale_point

        essence_values_per_class[class_name] = round(morale_per_one_essence)

    return essence_values_per_class

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



def get_key_from_dictionary(dictionary, value):
    return list(dictionary.keys())[
        list(dictionary.values()).index(value)]

#
# # ToDo: Parser (Name, Not ID)
# CURRENT_CLASS = "Beorning".upper()
#
# essence_weights = {"Maximum Morale": 1,
#                    "Vitality": 1,
#                    "Finesse Rating": 1,
#                    "Critical Defence": 0,
#                    "Resistance Rating": 0,
#                    "Tactical Mastery Rating": 0,
#                    "Incoming Healing Rating": 0,
#                    "Tactical Mitigation": 1,
#                    "Critical Rating": 1,
#                    "Parry Rating": 0,
#                    "Outgoing Healing Rating": 0.75,
#                    "Evade Rating": 0,
#                    "Physical Mitigation": 1,
#                    "Physical Mastery Rating": 0,
#                    "Block Rating": 0}


#ToDo: Parser
CHOOSEN_ESSENCE_TIER = 3

import json
import requests

INSTALL_DIR = r"~\AppData\Roaming\EVReader"

def check_version_updates(current):
    print('Checking Versions')

    url = f'https://api.github.com/repos/Drakkens/EVReader/releases/latest'
    response = requests.get(url)
    print(response)

    if response.status_code == 200:
        release_info = json.loads(response.text)
        latest_version = release_info['tag_name']
        print(latest_version, current)

        if latest_version != current:
            download_url = release_info['assets'][0]['browser_download_url']

            return download_url
    return None

