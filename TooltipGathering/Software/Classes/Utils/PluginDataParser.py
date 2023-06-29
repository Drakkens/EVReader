import os
import re

LOTRO_DIR = os.path.expanduser(r"~\Documents\The Lord of the Rings Online\PluginData")

current_profile_file = open(LOTRO_DIR + r"\maxusdrago\Crickhollow\Drakensbear\EVCTest.plugindata")

content = current_profile_file.read()

regex_groups = r'(?P<stat_name>[a-zA-Z\s]*)"] = "(?P<stat_weight>\d+.*\d*)"'
pattern = re.compile(regex_groups)

essence_weights = {}

for match in pattern.finditer(content):
    stat_name = match.group(1)
    stat_weight = match.group(2)
    
    essence_weights[stat_name] = stat_weight
    
print(essence_weights)