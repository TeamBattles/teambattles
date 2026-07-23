from enum import Enum

class TournamentPlacementPointsError(str, Enum):
    EMPTY = "EMPTY",
    ALL_ZERO = "ALL_ZERO",
    TOO_MANY_ROWS = "TOO_MANY_ROWS",
    BAD_PLACEMENT = "BAD_PLACEMENT",
    BAD_POINTS = "BAD_POINTS",
    DUPLICATE = "DUPLICATE",
    NOT_ASCENDING = "NOT_ASCENDING",

