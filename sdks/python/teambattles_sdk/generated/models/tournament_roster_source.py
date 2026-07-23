from enum import Enum

class TournamentRosterSource(str, Enum):
    TEAM_MEMBER = "TEAM_MEMBER",
    FREE_AGENT = "FREE_AGENT",

