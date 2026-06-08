from enum import Enum

class TicketSummary_priority(str, Enum):
    Low = "low",
    Medium = "medium",
    High = "high",
    Urgent = "urgent",

