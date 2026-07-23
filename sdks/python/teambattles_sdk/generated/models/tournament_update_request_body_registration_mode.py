from enum import Enum

class TournamentUpdateRequestBody_registrationMode(str, Enum):
    OPEN = "OPEN",
    APPLICATION = "APPLICATION",
    INVITE_ONLY = "INVITE_ONLY",

