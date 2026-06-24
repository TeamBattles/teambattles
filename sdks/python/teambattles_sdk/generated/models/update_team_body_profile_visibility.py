from enum import Enum

class UpdateTeamBody_profileVisibility(str, Enum):
    Public = "public",
    Limited = "limited",
    Private = "private",

