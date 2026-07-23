from enum import Enum

class TournamentUpdateResponse_applied(str, Enum):
    Direct = "direct",
    Pending = "pending",
    Noop = "noop",

