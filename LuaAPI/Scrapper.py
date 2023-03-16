import os.path
from bs4 import BeautifulSoup

API_DIR = "/media/shared/Projects/Fleet/LOTRO/SSG_U25_LuaDocumentation/"


def generate_contents():
    for file in os.listdir(API_DIR):
        if "$Members.html" in file:
            print(file)
            contents = open(API_DIR + "/" + file, "r", encoding="UTF-16").read()
            html_contents = BeautifulSoup(contents, 'html.parser')

            for table in html_contents.find_all():
                if "id" in table.attrs and table['id'] == 'memberList':
                    for row in table.contents:
                        if row.name == 'tr':
                            for row_child in row:
                                if row_child.name == 'td' and row_child:
                                    td = row_child
                                    if td.contents[0].name == 'a':
                                        method_name = td.contents[0].contents[0]
                                        print(method_name)
                                    elif td.contents[0].name is None:
                                        method_documentation = td.contents[0]
                                        print(method_documentation)


generate_contents()
