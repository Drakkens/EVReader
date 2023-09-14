import io
import os
import shutil
import subprocess
import tempfile
import time
import zipfile
import sys
import requests


def download_and_apply_update(download_url):
    response = requests.get(download_url, stream=True)
    if response.status_code == 200:
        temp_dir = tempfile.mkdtemp()

        zip_data = response.content
        zip_object = zipfile.ZipFile(io.BytesIO(zip_data))
        zip_object.extractall(temp_dir)
        zip_object.close()

        current_dir = os.path.dirname(os.path.realpath(sys.argv[0]))
        for file_name in os.listdir(temp_dir):
            file_path = os.path.join(temp_dir, file_name)
            dest_path = os.path.join(current_dir, file_name)

            shutil.copy2(file_path, dest_path)

        shutil.rmtree(temp_dir)
        
        
        time.sleep(5)
        print("Opening App")
        subprocess.run([f"{current_dir}\\LOTRO Essence Value Tooltips.exe"], shell=True, close_fds=True, stdin=None, stdout=None, stderr=None)

        sys.exit('Update Success!')
    else:
        sys.exit('Update Failed!')        


url = sys.argv[1]

download_and_apply_update(url)