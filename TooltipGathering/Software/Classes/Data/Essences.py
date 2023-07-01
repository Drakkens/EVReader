from enum import Enum

LIVELY_DELVERS_ESSENCES = {
    "Physical Mastery Rating": 29943,
    "Tactical Mastery Rating": 29943,
    "Physical Mitigation": 42292,
    "Tactical Mitigation": 39649,
    "Critical Rating": 31386,
    "Critical Defence": 49610,
    "Finesse Rating": 46753,
    "Block Rating": 54441,
    "Parry Rating": 54441,
    "Evade Rating": 54441,
    "Outgoing Healing Rating": 73863,
    "Incoming Healing Rating": 54527,
    "Resistance Rating": 54441,
    "Might": 4464,
    "Agility": 4464,
    "Fate": 4464,
    "Will": 4464,
    "Vitality": 2338,

}


class EssenceTiers140(Enum):
    TIER1 = 1
    TIER2 = 2
    TIER3 = LIVELY_DELVERS_ESSENCES
    TIER4 = 4


