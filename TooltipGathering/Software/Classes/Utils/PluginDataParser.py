import os
import re

LOTRO_DIR = os.path.expanduser(r"~\Documents\The Lord of the Rings Online\PluginData")


def read_plugin_data():
    possible_files = {}

    for root, dirs, files in os.walk(LOTRO_DIR):
        for file in files:
            if "EVC" in file:
                possible_files[os.path.getmtime(root + "\\" + file)] = root + "\\" + file

    sorted_files = dict(sorted(possible_files.items(), reverse=True))

    last_modified_couple = next((iter(sorted_files.items())))
    last_modified_file = last_modified_couple[1]
    current_profile_file = open(last_modified_file)

    content = current_profile_file.read()

    regex_groups = r'(?P<stat_name>[a-zA-Z\s]*)"] = "(?P<stat_weight>\d+.*\d*|[A-Za-z-]*)"'
    pattern = re.compile(regex_groups)

    for match in pattern.finditer(content):
        stat_name = match.group(1)
        stat_value = match.group(2)

        if stat_name == 'ClassName':
            current_class = stat_value.upper().replace("-", "")
            PluginData.current_class = current_class
        # elif stat_name == 'EssenceTier':
        #     CHOOSEN_ESSENCE_TIER = stat_value
        else:
            PluginData.essence_weight[stat_name] = float(stat_value)


def get_essence_weight(stat):
    return PluginData.essence_weight.get(stat)


def get_current_class():
    return PluginData.current_class


class PluginData:
    current_class = None
    essence_weight = {}
