from enum import Enum

class TournamentCreateRequestBody_seedingMethod(str, Enum):
    MANUAL = "MANUAL",
    RANDOM = "RANDOM",
    REGISTRATION = "REGISTRATION",

