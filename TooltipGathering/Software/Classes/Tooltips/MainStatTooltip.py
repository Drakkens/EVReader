import os

from Classes.Utils.Utils import STAT_NAMES, has_number
from Classes.Tooltips.TooltipInterface import TooltipInterface

TOOLTIP_DIR = r"C:/Users/joanf/Documents/Fleet/LOTRO-Repo/TooltipGathering/Software/Tooltips/"


class MainStatTooltip(TooltipInterface):
    def __init__(self, text):
        self.text = text
        self.class_name = self.find_class_name()
        self.stat_name, stat_name_separator = self.find_stat_name()
        self.amount = self.find_stat_amount(stat_name_separator)
        self.stats = self.find_stat_contributions(self.amount)

    def __str__(self):
        return f"""Name: {self.stat_name}
Class: {self.class_name}
Amount: {self.amount}
Stats: {self.stats}"""

    def save_image(self, ocr=False):
        if not os.path.isdir(f"{TOOLTIP_DIR}{self.class_name}"):
            os.mkdir(f"{TOOLTIP_DIR}{self.class_name}")
            
    def find_class_name(self):
        class_text = self.text[1]
        class_separator = class_text.find(',')

        if class_separator == -1:
            class_separator = class_text.find('.')

        class_name = class_text[:class_separator].replace("AS A", "").strip().capitalize() or None

        if class_name == 'Loremaster':
            class_name = 'Lore-Master'
        if class_name == 'Runekeeper':
            class_name = 'Rune-Keeper'

        return class_name

    def find_stat_name(self):
        first_number_index = len(self.text[0])
        for index in range(0, len(self.text[0])):
            if self.text[0][index].isdigit():
                first_number_index = index
                break

        if self.text[0].find(' ') == -1:
            stat_name_separator = first_number_index
        else:
            stat_name_separator = min(self.text[0].find(' '), first_number_index)

        stat_name = self.text[0][:stat_name_separator].capitalize().strip()

        return stat_name, stat_name_separator

    def find_stat_amount(self, stat_name_separator):
        stat_amount_separator = self.text[0][stat_name_separator:].rstrip().find('(')

        if stat_amount_separator == -1:
            stat_amount_separator = (self.text[0][stat_name_separator:].strip()).find(' ')

        if stat_amount_separator == -1:
            stat_amount_separator = len(self.text[0])

        stat_amount = self.text[0][stat_name_separator:stat_name_separator + stat_amount_separator]

        return stat_amount.replace(',', '').replace('.', '').strip()

    def find_stat_contributions(self, amount):
        stats = {}
        try:
            contributes_section_index = self.text.index('CONTRIBUTES')

            # Stat Contribution Section
            for index in range(contributes_section_index + 1, len(self.text)):
                for STAT in STAT_NAMES:

                    if STAT.upper() in self.text[index]:
                        contribution_line = self.text[index]
                        if not has_number(self.text[index]):
                            contribution_line = self.text[index - 1] + " " + (self.text[index])

                        stat_value = int(contribution_line.replace(',', '')
                                         .replace('.', '')
                                         .replace('POINTS', '')
                                         .replace('TO', '')
                                         .replace(STAT.upper(), '')
                                         .strip())

                        stats[STAT] = round(stat_value / int(amount), 4)
        except Exception as e:
            print(f'Main Stat Tooltip: {e, sys.exc_info()[2].tb_lineno}')

        return stats
