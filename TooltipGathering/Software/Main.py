import sys
from time import *

from Classes import TooltipDetector
from Classes.Utils.Tkinter import get_window_instance



def main(mode):
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

                # Reset evd.items
                get_window_instance().items = {}

                for tooltip in tooltips:
                    try:
                        position = tooltip.get_position()
                        if mode == TooltipDetector.Mode.ITEM:
                            TooltipDetector.process_item_tooltip(screenshot, tooltip, mode, position)

                        elif mode == TooltipDetector.Mode.STATS:
                            TooltipDetector.process_stat_tooltip(screenshot, tooltip, mode)
                    except Exception as e:
                        print(e)
                get_window_instance().needs_canvas_update = get_window_instance().check_for_update()
                print(get_window_instance().needs_canvas_update)

    except KeyboardInterrupt:
        print("Exiting...")
        get_window_instance().isDisplayed = False
        sys.exit(130)


main(TooltipDetector.Mode.ITEM)
