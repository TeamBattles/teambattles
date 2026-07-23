from enum import Enum

class TournamentCreateRequestBody_hostType(str, Enum):
    User = "user",
    Org = "org",
    League = "league",

