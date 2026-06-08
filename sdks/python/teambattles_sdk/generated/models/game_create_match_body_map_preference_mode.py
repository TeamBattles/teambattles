from enum import Enum

class GameCreateMatchBody_mapPreferenceMode(str, Enum):
    PREFERRED = "PREFERRED",
    VETO = "VETO",
    MANUAL = "MANUAL",

