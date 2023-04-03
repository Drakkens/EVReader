STAT_NAMES = [
    'Critical Rating',
    'Finesse Rating',
    'Physical Mastery Rating',
    'Tactical Mastery Rating',
    'Physical Mitigation',
    'Tactical Mitigation',
    'Critical Defence',
    'Block Rating',
    'Parry Rating',
    'Evade Rating',
    'Outgoing Healing Rating',
    'Incoming Healing Rating',
    'Resistance Rating',
]


def has_number(string):
    for char in string:
        if char.isdigit():
            return True
        return False
