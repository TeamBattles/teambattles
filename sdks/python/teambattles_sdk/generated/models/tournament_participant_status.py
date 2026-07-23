from enum import Enum

class TournamentParticipantStatus(str, Enum):
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    DENIED = "DENIED",
    WITHDRAWN = "WITHDRAWN",
    REMOVED = "REMOVED",
    DISQUALIFIED = "DISQUALIFIED",

