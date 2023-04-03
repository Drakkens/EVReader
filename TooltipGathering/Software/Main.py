import sys
from time import sleep

from Classes import TooltipDetector


def main(mode):
    try:
        while True:
            sleep(1)

            result = TooltipDetector.get_screen_contents()
            if result is not None:
                screenshot, analysis = result
                tooltips = TooltipDetector.find_rectangles(650, analysis)

                for tooltip in tooltips:
                    if mode == TooltipDetector.Mode.ITEM:
                        TooltipDetector.process_item_tooltip(screenshot, tooltip, mode)

                    elif mode == TooltipDetector.Mode.STATS:
                        TooltipDetector.process_stat_tooltip(screenshot, tooltip, mode)

    except KeyboardInterrupt:
        print("Exiting...")
        sys.exit(130)


main(TooltipDetector.Mode.ITEM)
