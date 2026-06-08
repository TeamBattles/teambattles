from enum import Enum

class StrategyVisibility(str, Enum):
    Private = "private",
    Unlisted = "unlisted",
    Public = "public",

