import sys
import threading
import tkinter
from tkinter import *
import win32gui
import win32con
from PIL import ImageTk, Image
from time import sleep


IMAGE = Image.open('Essence_Green.png')


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
    def __init__(self):
        self.root = None
        self.items = 0
        self.isDisplayed = True
        self.handler = None
        self.canvas = None

        # self.construct_window()
        #
        # if position is None:
        #     thread = threading.Thread(target=self.construct_window)
        # else:
        thread = threading.Thread(target=self.construct_window)
        #
        thread.start()

    def construct_window(self, position=None):
        self.root = Tk()
        icon = ImageTk.PhotoImage(file='Essence_Green.png')
        self.root.icon = icon
        self.root.geometry(f'2560x1440')
        self.root.attributes('-transparentcolor', 'black', '-topmost', 1)
        self.root.config(bg='black')
        self.root.overrideredirect(True)

        self.canvas = Canvas(self.root, width=2560, height=1440, bg='black', highlightthickness=1)
        setClickThrough(self.canvas.winfo_id())

        self.root.after(50, self.add_essence_value_display(10, [100,100]))
        self.root.after(50, self.add_essence_value_display(30, [300,100]))
        self.root.after(50, self.add_essence_value_display(40, [400,100]))
        self.canvas.pack()

        # Run for as long as isDisplayed == True
        while self.isDisplayed:
            self.root.update()

            sleep(1)

    def add_essence_value_display(self, value, position):
        # Get Image
        try:
            print(IMAGE)

            # Render Canvas Contents
            self.canvas.create_text(position[0], position[1], text=value, fill='white', font='Verdana 12')
            self.canvas.create_image(len(str(value)) * 5 + 25 + position[0], position[1], image=self.root.icon)
        except Exception as e:
            print(str(e))


evd = EssenceValueDisplay()

