import json


class ItemTooltipEncoder(json.JSONEncoder):
    def default(self, object):
        return {'itemName': object.name, 'itemLevel': object.item_level,
                'x0': object.start[0], 'y0': object.start[1],
                'x1': object.end[0], 'y1': object.end[1]}
