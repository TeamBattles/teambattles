from enum import Enum

class CreateMatchRequestBody_platform(str, Enum):
    PC = "PC",
    XBOX = "XBOX",
    PLAYSTATION = "PLAYSTATION",
    CONSOLE_ONLY = "CONSOLE_ONLY",
    CROSSPLAY = "CROSSPLAY",

