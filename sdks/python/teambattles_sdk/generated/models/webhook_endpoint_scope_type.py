from enum import Enum

class WebhookEndpoint_scopeType(str, Enum):
    Game = "game",
    League = "league",
    Org = "org",
    Team = "team",
    User = "user",
