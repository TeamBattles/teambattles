from enum import Enum

class TournamentFreeAgentOfferStatus(str, Enum):
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    DECLINED = "DECLINED",
    EXPIRED = "EXPIRED",
    REVOKED = "REVOKED",

