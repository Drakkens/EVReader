import sys
import tkinter as tk
from time import sleep

try:
    root = tk.Tk()
    essence_value = tk.Label(text='3.14', background='red')
    essence_value.pack()

    root.overrideredirect(True)
    root.mainloop()

except KeyboardInterrupt:
    sys.exit(130)
