import os.path

import Utils

API_DIR = Utils.get_api_directory()


def main():
    # generate_packages()
    read_structure(os.path.dirname(API_DIR))


def read_structure(api_directory):
    for file in os.listdir(api_directory):
        split_file = file.split("_")

        # Skip Parent Directories
        if len(split_file) > 1:
            current_dir = ""

            # Avoid Files
            for i in range(len(split_file) - 2):
                new_dir = current_dir + split_file[i]

                # If Folder not Created
                if not os.path.exists(new_dir):
                    # Creates Folder and Sets Current Directory to Created
                    current_dir = create_folder_structure(new_dir)
                else:
                    # If no New Folder Created (Already Existing), Set Current to Expected
                    current_dir = "{}/".format(new_dir)

def create_folder_structure(new_dir):
    os.mkdir(new_dir)

    return "{}/".format(new_dir)


main()
