from enum import Enum

class ProfileVisibility(str, Enum):
    Public = "public",
    Limited = "limited",
    Private = "private",
