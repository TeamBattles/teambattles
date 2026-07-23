from enum import Enum

class TournamentCalendarEvent_kind(str, Enum):
    Registration = "registration",
    Checkin = "checkin",
    Start = "start",

