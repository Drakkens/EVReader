import platform

def get_api_directory():

    LIN_DIR = "/media/shared/Projects/Fleet/LOTRO/SSG_U25_LuaDocumentation/"
    WIN_DIR = r'C:\Users\Max\Documents\Fleet\LOTRO-Repo\SSG_U25_LuaDocumentation/'

    if platform.system() == 'Windows':
        API_DIR = WIN_DIR
    else:
        API_DIR = LIN_DIR

    return API_DIR