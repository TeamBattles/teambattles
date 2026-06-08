from enum import Enum

class UpdateAttendanceRequestBody_status(str, Enum):
    ATTENDING = "ATTENDING",
    NOT_ATTENDING = "NOT_ATTENDING",
    TENTATIVE = "TENTATIVE",

