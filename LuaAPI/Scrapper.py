import os.path
import platform

from bs4 import BeautifulSoup

import StructureBuilder
from Method import Method
import Utils

API_DIR = Utils.get_api_directory()
def generate_contents():
    for file in os.listdir(API_DIR):
        # Get All Member Files
        if "$Members.html" in file:
            class_name = file.split("_")[-1:][0].replace("$Members.html", "")
            package = file.split("_")[:-1]

            contents = open(API_DIR + "/" + file, "r", encoding="UTF-16").read()
            html_contents = BeautifulSoup(contents, 'html.parser')

            methods = html_contents.find_all(id='MethodsSection')
            extracted_methods = []
            if len(methods) > 0:
                extracted_methods = extract_methods(methods[0])

            events = html_contents.find_all(id='EventsSection')
            extracted_events = []
            if len(events) > 0:
                extracted_events = extract_methods(events[0])


            path = str.join("/", package) + "/" + class_name + ".lua"

            if not os.path.exists(path):
                create_file(path, extracted_methods, extracted_events, class_name)


# create_methods()

def extract_methods(table):
    methods = set()

    trs = table.find_all("tr")
    for row in trs[1:]:
        method = row.find_all("td")
        accessor = str(method[0]).split('/')[1].replace('.gif"', "").strip()
        name = method[1].getText().strip()
        description = method[2].getText().replace("  ", '').strip()

        # ToDo: Add Annotations for Methods.
        # Reference: https://github.com/lunarwtr/vscode-lotro-api/blob/main/resources/Lua/EmmyLua/Turbine/Turbine.lua
        annotations = []

        methods.add(Method(accessor, name, description, annotations))

    return methods


def write_function(file, method, class_name):
    for line in method.description.splitlines():
        file.write(f'--- {line} \n')
    file.write(f'function {class_name}:{method.name}() \n')
    file.write(f'end \n' )

def create_file(path, methods, events, class_name):
    file = open(path, 'w')
    file.write("local {} = {} \n".format(class_name, {}))

    for method in methods:
        write_function(file, method, class_name)

    for method in events:
        write_function(file, method, class_name)

    file.write("return {}".format(class_name))

StructureBuilder.main()

generate_contents()
