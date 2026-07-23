from enum import Enum

class TournamentStartRequestBody_seedMethod(str, Enum):
    Manual = "manual",
    Random = "random",
    Registration = "registration",

