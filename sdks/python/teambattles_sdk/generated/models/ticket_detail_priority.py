from enum import Enum

class TicketDetail_priority(str, Enum):
    Low = "low",
    Medium = "medium",
    High = "high",
    Urgent = "urgent",

