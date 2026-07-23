from enum import Enum

class TournamentCreateRequestBody_registrationMode(str, Enum):
    OPEN = "OPEN",
    APPLICATION = "APPLICATION",
    INVITE_ONLY = "INVITE_ONLY",

