import json


def build_array(*items):
    json_object = {"Items": []}

    for item in items:
        json_object["Items"].append(item.to_json())
    
    print(json_object)
    return json_object
