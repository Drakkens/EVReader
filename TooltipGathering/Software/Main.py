import io
import os
import shutil
import subprocess
import sys
import tempfile
import zipfile
from time import *
import requests

from Software.Classes import TooltipDetector
from Software.Classes.Utils.Tkinter import get_window_instance
from Software.Classes.Utils.Utils import check_version_updates


def main(mode):
    CURRENT_VERSION = "v0.3-ALPHA"
    print('Getting Updates')
    url_exe, url_updater = check_version_updates(CURRENT_VERSION)

    current_dir = os.path.dirname(os.path.realpath(sys.argv[0]))
    if not os.path.isfile(f"{current_dir}\\Updater.py"):
        response = requests.get(url_updater, stream=True)
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

    if url_exe is not None:
        print('Launching!')
        subprocess.Popen(['start', '/B', sys.executable, f"{current_dir}\\Updater.py", url_exe], shell=True, close_fds=True, stdin=None, stdout=None, stderr=None)
        raise SystemExit

    try:
        while True:
            sleep(0.5)

            result = TooltipDetector.get_screen_contents()
            if result is not None:
                screenshot, analysis = result
                tooltips = TooltipDetector.find_rectangles(650, analysis)

                # Tooltips before this scan.
                # Goal is to Update_Canvas whenever Old Tooltips differs to New Tooltips
                # If both are equal, don't update.
                get_window_instance().old_items = get_window_instance().items.copy()

                # Reset get_window_instance().items
                get_window_instance().items = {}

                for tooltip in tooltips:
                    try:
                        position = tooltip.get_position()
                        if mode == TooltipDetector.Mode.ITEM:
                            TooltipDetector.process_item_tooltip(screenshot, tooltip, mode, position)

                        elif mode == TooltipDetector.Mode.STATS:
                            TooltipDetector.process_stat_tooltip(screenshot, tooltip, mode)
                    except Exception as e:
                        print(f'Main Exception: {e, sys.exc_info()[2].tb_lineno}')

                get_window_instance().needs_canvas_update = get_window_instance().check_for_update()

    except (KeyboardInterrupt, SystemExit):
        print("Exiting...")
        get_window_instance().isDisplayed = False
        sys.exit(130)


main(TooltipDetector.Mode.ITEM)
