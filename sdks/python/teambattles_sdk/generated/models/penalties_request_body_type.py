from enum import Enum

class PenaltiesRequestBody_type(str, Enum):
    Penalties = "penalties",
    Cooldowns = "cooldowns",
    All = "all",

