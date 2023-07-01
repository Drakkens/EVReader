import os
import re

LOTRO_DIR = os.path.expanduser(r"~\Documents\The Lord of the Rings Online\PluginData")

possible_files = {}

for root, dirs, files in os.walk(LOTRO_DIR):
    for file in files:
        if "EVC" in file:
            possible_files[os.path.getmtime(root + "\\" + file)] = root + "\\" + file

sorted_files = dict(sorted(possible_files.items(), reverse=True))
last_modified_file = next((iter(sorted_files.items())))[1]

current_profile_file = open(last_modified_file)

content = current_profile_file.read()

regex_groups = r'(?P<stat_name>[a-zA-Z\s]*)"] = "(?P<stat_weight>\d+.*\d*)"'
pattern = re.compile(regex_groups)

essence_weights = {}

for match in pattern.finditer(content):
    stat_name = match.group(1)
    stat_weight = match.group(2)

    essence_weights[stat_name] = stat_weight

print(essence_weights)
