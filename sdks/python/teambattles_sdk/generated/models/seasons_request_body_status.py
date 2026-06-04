from enum import Enum

class SeasonsRequestBody_status(str, Enum):
    UPCOMING = "UPCOMING",
    ACTIVE = "ACTIVE",
    COMPLETED = "COMPLETED",

