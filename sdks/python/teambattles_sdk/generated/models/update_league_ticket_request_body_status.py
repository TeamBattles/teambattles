from enum import Enum

class UpdateLeagueTicketRequestBody_status(str, Enum):
    Open = "open",
    In_progress = "in_progress",
    Awaiting_response = "awaiting_response",
    Resolved = "resolved",
    Closed = "closed",

