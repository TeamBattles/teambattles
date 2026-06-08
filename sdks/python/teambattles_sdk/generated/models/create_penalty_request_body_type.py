from enum import Enum

class CreatePenaltyRequestBody_type(str, Enum):
    POINT_DEDUCTION = "POINT_DEDUCTION",
    MATCH_FORFEIT = "MATCH_FORFEIT",
    WARNING = "WARNING",

