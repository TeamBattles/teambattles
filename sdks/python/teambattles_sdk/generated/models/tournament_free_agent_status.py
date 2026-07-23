from enum import Enum

class TournamentFreeAgentStatus(str, Enum):
    AVAILABLE = "AVAILABLE",
    PICKED_UP = "PICKED_UP",
    WITHDRAWN = "WITHDRAWN",

