from enum import Enum

class TournamentCancelResponse_approvalStatus(str, Enum):
    NOT_SUBMITTED = "NOT_SUBMITTED",
    AWAITING_APPROVAL = "AWAITING_APPROVAL",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",

