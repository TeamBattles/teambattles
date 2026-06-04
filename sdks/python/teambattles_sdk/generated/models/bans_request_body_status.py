from enum import Enum

class BansRequestBody_status(str, Enum):
    Active = "active",
    Expired = "expired",
    Revoked = "revoked",
    All = "all",

