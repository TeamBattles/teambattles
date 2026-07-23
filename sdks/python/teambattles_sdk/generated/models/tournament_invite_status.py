from enum import Enum

class TournamentInviteStatus(str, Enum):
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    DECLINED = "DECLINED",
    REVOKED = "REVOKED",

