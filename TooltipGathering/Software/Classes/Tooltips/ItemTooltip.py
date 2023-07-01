import string
import sys

from Classes.Utils.Utils import STAT_NAMES, StatType, EssenceTiers140, get_essence_weight, CURRENT_CLASS, CHOOSEN_ESSENCE_TIER
from Classes.Utils.Utils import calculate_morale_essence_value
from Classes.Data.Essences import *
from Classes.Data.Stats import *
from Classes.Data.Classes import *


def remove_unwanted_characters(text):
    return text.translate(str.maketrans("", "", "+-*,." + string.digits)).strip()


class ItemTooltip:
    def __init__(self, text, position):
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

    def convert_main_stat_to_raw_stats(self, class_name, main_stat_name, main_stat_amount, raw_stats):
        main_stat_to_raw_stats = globals()[class_name + "_STATS"].get(main_stat_name)
        for values in main_stat_to_raw_stats:
            for value in values:
                raw_stat_name = value[0]
                raw_stat_amount_per_main_stat_point = value[1]

                if raw_stat_name in raw_stats.keys():
                    raw_stats[raw_stat_name] += raw_stat_amount_per_main_stat_point[1] * main_stat_amount
                else:
                    raw_stats[raw_stat_name] = raw_stat_amount_per_main_stat_point[1] * main_stat_amount

        return raw_stats

    def get_essence_value(self):
        total_essence_slices = 0
        for stat_name, amount in self.raw_stats.items():
            if stat_name != 'Maximum Morale':
                essence_value = EssenceTiers140['TIER' + CHOOSEN_ESSENCE_TIER].get(stat_name)
            else:
                essence_value = calculate_morale_essence_value().get(CURRENT_CLASS)

            print(stat_name)
            total_essence_slices += round(amount / essence_value * get_essence_weight(stat_name), 4)

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

        return ' '.join(name).title()

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

    def find_item_stats(self, item_level_index):
        stats = {}
        raw_stats = {}
        try:
            for index in range(item_level_index, len(self.text)):
                # ToDo: Clean Up
                # Remove All Numbers/Symbols from String. Only Stat Name Remains
                letters_only_text = remove_unwanted_characters(self.text[index])
                letters_only_text_and_next_row = letters_only_text + ' ' + remove_unwanted_characters(
                    self.text[index + 1])
                if letters_only_text in STAT_NAMES:
                    stat = STAT_NAMES[STAT_NAMES.index(letters_only_text)]

                elif letters_only_text_and_next_row in STAT_NAMES:
                    stat = STAT_NAMES[STAT_NAMES.index(letters_only_text_and_next_row)]

                else:
                    # ToDo: Same issue as described in get_essence_slots
                    if "ESSENCE" in self.text[index] or "EMPTY SLOT" in self.text[index] or "Durability" in self.text[index]:
                        break
                    continue

                amount = self.text[index].replace(letters_only_text, '').replace('+', '').replace(',', '').strip()
                stats[stat] = int(amount)
                # Vit Treated as Raw Stat

                if stat in MAIN_STATS and stat != 'Vitality':
                    # ToDo: Plugin Companion, Current Character Class (Or Class Selector)
                    raw_stats = self.convert_main_stat_to_raw_stats(CURRENT_CLASS, stat, int(amount), raw_stats)

                else:
                    if stat in raw_stats.keys():
                        raw_stats[stat] += int(amount)

                    else:
                        raw_stats[stat] = int(amount)
        except Exception as e:
            print(f'Item Exception: {e, sys.exc_info()[2].tb_lineno}')

        return stats, raw_stats
