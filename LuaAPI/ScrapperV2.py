import os.path
import platform

from bs4 import BeautifulSoup

import StructureBuilder
from Method import Method
import Utils

API_DIR = Utils.get_api_directory()



def get_classes_from_html(file):
    extracted_classes = []

    try:
        contents = open(API_DIR + "/" + file, "r", encoding="UTF-16").read()
        html_contents = BeautifulSoup(contents, 'html.parser')

        classes = html_contents.find_all(id='ClassesSection')

        if len(classes) > 0:
            extracted_classes = extract_items_from_table(classes[0])
    except Exception:
        print("Exception")

    return extracted_classes



def extract_items_from_table(table):
    items = set()

    trs = table.find_all("tr")
    for row in trs[1:]:
        method = row.find_all("td")
        accessor = str(method[0]).split('/')[1].replace('.gif"', "").strip()
        name = method[1].getText().strip()
        description = method[2].getText().replace("  ", '').strip()

        # ToDo: Add Annotations for Methods.
        # Reference: https://github.com/lunarwtr/vscode-lotro-api/blob/main/resources/Lua/EmmyLua/Turbine/Turbine.lua
        annotations = []

        items.add(Method(accessor, name, description, annotations))

    return items
