from enum import Enum

class MatchStatus(str, Enum):
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    READY = "READY",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    DISPUTED = "DISPUTED",
    FORFEITED = "FORFEITED",

