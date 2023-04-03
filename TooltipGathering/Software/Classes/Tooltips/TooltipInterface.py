class TooltipInterface:
    image = None
    text = None

    def __init__(self, image, text):
        self.image = image
        self.text = text

    def save_image(self):
        pass
