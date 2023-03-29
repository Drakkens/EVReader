import os


class MainStatTooltip:
    def __init__(self, text):
        self.class_name = find_class_name(text)
        self.stat_name, stat_name_separator = find_stat_name(text)
        self.amount = find_stat_amount(text, stat_name_separator)
        self.stats = find_stat_contributions(self.amount, text)

    def __str__(self):
        return f"""Name: {self.stat_name}
Class: {self.class_name}
Amount: {self.amount}
Stats: {self.stats}"""

    def save_image(self, image, ocr=False):
        if not os.path.isdir(f"./Tooltips/{self.class_name}"):
            os.mkdir(f"./Tooltips/{self.class_name}")

        if ocr:
            image.save(f"./Tooltips/{self.class_name}/{self.stat_name}_ocr.jpg")
        else:
            image.save(f"./Tooltips/{self.class_name}/{self.stat_name}.jpg")


STAT_NAMES = [
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


def find_class_name(text):
    class_separator = text[1].find(',')
    if class_separator == -1:
        class_separator = text[1].find('.')

    print(class_separator)
    class_name = text[1][5:class_separator].capitalize().strip() or None

    return class_name


def find_stat_name(text):
    first_number_index = len(text[0])
    for index in range(0, len(text[0])):
        if text[0][index].isdigit():
            print(text[0][index])
            first_number_index = index
            break

    stat_name_separator = min(text[0].find(' '), first_number_index)

    stat_name = text[0][:stat_name_separator].capitalize().strip()

    return stat_name, stat_name_separator


def find_stat_amount(text, stat_name_separator):
    stat_amount_separator = text[0].find('(')
    if stat_amount_separator == -1:
        stat_amount_separator = len(text[0])

    stat_amount = text[0][stat_name_separator:stat_amount_separator]

    return stat_amount.replace(',', '').replace('.', '').strip()


def find_stat_contributions(amount, text):
    stats = {}
    try:
        contributes_section_index = text.index('CONTRIBUTES')
        print(text)

        # Stat Contribution Section
        for index in range(contributes_section_index + 1, len(text)):
            for STAT in STAT_NAMES:
                if STAT.upper() in text[index]:
                    # ToDo: Fate (Hunter At Least) Shows \n at the end of each contribution line. Workaround
                    contribution_line = text[index]
                    if not has_number(text[index]):
                        contribution_line = text[index - 1] + " " + (text[index])

                    stats[STAT] = round(int(
                        contribution_line.replace(',', '').replace('.', '').replace('POINTS', '').replace('TO',
                                                                                                          '').replace(
                            STAT.upper(), '')) / int(str(amount)), 2)
    except ValueError:
        print("Invalid Tooltip")

    return stats


def has_number(string):
    for char in string:
        if char.isdigit():
            return True
        return False
