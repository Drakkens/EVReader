import os.path

from bs4 import BeautifulSoup

import StructureBuilder
from Method import Method

API_DIR = "/media/shared/Projects/Fleet/LOTRO/SSG_U25_LuaDocumentation/"


def generate_contents():
    for file in os.listdir(API_DIR):
        # Get All Member Files
        if "$Members.html" in file:
            class_name = file.split("_")[-1:][0].replace("$Members.html", "")
            package = file.split("_")[:-1]

            contents = open(API_DIR + "/" + file, "r", encoding="UTF-16").read()
            html_contents = BeautifulSoup(contents, 'html.parser')

            methods = html_contents.find_all(id='MethodsSection')
            if len(methods) > 0:
                extracted_methods = extract_methods(methods[0])

                path = str.join("/", package) + "/" + class_name + ".lua"

                if not os.path.exists(path):
                    create_file(path, extracted_methods, class_name)


# create_methods()

def extract_methods(table):
    methods = set()

    trs = table.find_all("tr")
    for row in trs[1:]:
        method = row.find_all("td")
        accessor = str(method[0]).split('/')[1].replace('.gif"', "").strip()
        name = str(method[1]).split('"')[1].replace('\n', '').strip()
        description = method[2].getText().strip()

        methods.add(Method(accessor, name, description))

    return methods


def create_file(path, methods, class_name):
    file = open(path, 'w')
    file.write("local {} = {} \n".format(class_name, {}))


    file.write("return {}".format(class_name))

StructureBuilder.main()

generate_contents()
