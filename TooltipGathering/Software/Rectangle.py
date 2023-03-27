class Rectangle:
    def __init__(self, start, end):
        self.x0 = start[0]
        self.y0 = start[1]

        self.x1 = end[0]
        self.y1 = end[1]

        self.height = self.y1 - self.y0
        self.width = self.x1 - self.x0

    @classmethod
    def from_points(cls, start: list, end: list) -> object:
        return cls(start, end)

    @classmethod
    def from_coordinates(cls, x0: int, y0: int, x1: int, y1: int):
        return cls([x0, y0], [x1, y1])
