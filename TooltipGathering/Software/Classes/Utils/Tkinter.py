import sys
import threading

import numpy as np
from tkinter import *

import pygetwindow
import win32gui
import win32con
import win32api
from PIL import ImageTk, Image
from time import sleep

IMAGE = Image.open('Essence_Green.png')
TARGET_WINDOW_TITLE = 'The Lord of the Rings Online™'


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
    display = None

    def __init__(self):
        EssenceValueDisplay.display = self
        self.root = None
        self.isDisplayed = True
        self.old_items = {}
        self.items = {}
        self.handler = None
        self.canvas = None
        self.needs_canvas_update = False

        thread = threading.Thread(target=self.build_window)
        thread.start()

    def build_window(self):
        dimensions = [win32api.GetSystemMetrics(0), win32api.GetSystemMetrics(1)]

        self.root = Tk()
        icon = ImageTk.PhotoImage(file='Essence_Green.png')
        self.root.icon = icon
        self.root.geometry(f'{dimensions[0]}x{dimensions[1]}')
        self.root.attributes('-transparentcolor', 'black', '-topmost', 1)
        self.root.config(bg='black')
        self.root.overrideredirect(True)

        self.canvas = Canvas(self.root, width=dimensions[0], height=dimensions[1], bg='black', highlightthickness=1)
        setClickThrough(self.canvas.winfo_id())

        self.canvas.pack()

        # Run for as long as isDisplayed == True
        while self.isDisplayed:
            self.root.update()

            if self.needs_canvas_update:
                self.update_canvas()

            focused_window = pygetwindow.getActiveWindowTitle()

            if focused_window != TARGET_WINDOW_TITLE:
                self.isDisplayed = False
                self.root.destroy()
                EssenceValueDisplay.display = None

            sleep(0.1)

    def add_essence_value_display(self, value, position):
        # Render Canvas Contents
        self.canvas.create_text(position[0], position[1], text=value, fill='white', font='Verdana 8')
        self.canvas.create_image(len(str(value)) * 3 + 15 + position[0], position[1], image=self.root.icon)
        
    def update_canvas(self):
        # Clear 
        self.canvas.delete('all')

        for item, values in self.items.items():
            start = values[1][0]
            end = values[1][1]
            position = [start[0] + ((end[0] - start[0]) / 1.35), start[1] + 80]
            
            print(item)
            
            self.add_essence_value_display(values[0], position)
        self.needs_canvas_update = False
        
    def check_for_update(self):
        print(self.items, self.old_items)
        for item in self.items:
            if item not in self.old_items:
                return True

        for item in self.old_items:
            if item not in self.items:
                return True

        return False


def get_window_instance():
    if EssenceValueDisplay.display is None:
        EssenceValueDisplay()

    return EssenceValueDisplay.display
