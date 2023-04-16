import sys
from time import *

from Classes import TooltipDetector
from Classes.Utils.Tkinter import get_window_instance

evd = get_window_instance()


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
                evd.old_items = evd.items.copy()

                # Reset evd.items
                evd.items = {}

                for tooltip in tooltips:
                    try:
                        position = tooltip.get_position()
                        if mode == TooltipDetector.Mode.ITEM:
                            TooltipDetector.process_item_tooltip(screenshot, tooltip, mode, position)

                        elif mode == TooltipDetector.Mode.STATS:
                            TooltipDetector.process_stat_tooltip(screenshot, tooltip, mode)
                    except Exception as e:
                        pass
                evd.needs_canvas_update = evd.check_for_update()
                print(evd.needs_canvas_update)

    except KeyboardInterrupt:
        print("Exiting...")
        evd.isDisplayed = False
        sys.exit(130)


main(TooltipDetector.Mode.ITEM)
