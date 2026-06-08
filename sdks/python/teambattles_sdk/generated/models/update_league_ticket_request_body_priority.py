from enum import Enum

class UpdateLeagueTicketRequestBody_priority(str, Enum):
    Low = "low",
    Medium = "medium",
    High = "high",
    Urgent = "urgent",

