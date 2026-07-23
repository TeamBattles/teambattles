from enum import Enum

class TournamentFormat(str, Enum):
    SINGLE_ELIMINATION = "SINGLE_ELIMINATION",
    DOUBLE_ELIMINATION = "DOUBLE_ELIMINATION",
    ROUND_ROBIN = "ROUND_ROBIN",
    SWISS = "SWISS",

