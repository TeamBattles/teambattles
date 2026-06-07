from enum import Enum

class ApiMatchPlayer_attendanceStatus(str, Enum):
    ATTENDING = "ATTENDING",
    NOT_ATTENDING = "NOT_ATTENDING",
    TENTATIVE = "TENTATIVE",
