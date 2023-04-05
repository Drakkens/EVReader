import sys
import threading
from tkinter import *
import win32gui
import win32con
from PIL import ImageTk, Image
from time import sleep


# https://stackoverflow.com/questions/67544105/click-through-tkinter-windows
def setClickThrough(hwnd):
    print("setting window properties")
    try:
        # Set To Layered + Transparent
        styles = win32con.WS_EX_LAYERED | win32con.WS_EX_TRANSPARENT
        win32gui.SetWindowLong(hwnd, win32con.GWL_EXSTYLE, styles)

        # Set Window Opacity to 255, Pixels with Color 0 should be transparent
        win32gui.SetLayeredWindowAttributes(hwnd, 0, 255, win32con.LWA_COLORKEY)

    except Exception as e:
        print(e)


class EssenceValueDisplay:
    def __init__(self, value, position=None):
        self.value = value
        self.isDisplayed = True
        self.handler = None

        if position is None:
            thread = threading.Thread(target=self.construct_window)
        else:
            thread = threading.Thread(target=self.construct_window, args=[position])

        thread.start()

    def construct_window(self, position=None):
        root = Tk()
        root.geometry(f'+{position[0]}+{position[1]}')
        root.attributes('-transparentcolor', 'black', '-topmost', 1)
        root.config(bg='black')
        root.overrideredirect(True)

        canvas = Canvas(root, width=100, height=32, bg='black', highlightthickness=0)

        setClickThrough(canvas.winfo_id())

        # Get Image
        image = ImageTk.PhotoImage(file='Essence_Green.png')

        # Render Canvas Contents
        canvas.create_text(15, 15, text=self.value, fill='white', font='Verdana 12')
        canvas.create_image(len(str(self.value)) * 5 + 25, 13, image=image)
        canvas.pack()

        # Run for as long as isDisplayed == True
        while self.isDisplayed:
            root.update()
            sleep(1)


sleep(3)
evd = EssenceValueDisplay(7.5, position=[500, 500])
sleep(5)

evd.isDisplayed = False
