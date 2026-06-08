from enum import Enum

class CreateLeagueTicketRequestBody_priority(str, Enum):
    Low = "low",
    Medium = "medium",
    High = "high",
    Urgent = "urgent",

