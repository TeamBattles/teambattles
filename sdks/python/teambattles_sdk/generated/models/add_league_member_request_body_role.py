from enum import Enum

class AddLeagueMemberRequestBody_role(str, Enum):
    ADMIN = "ADMIN",
    MANAGER = "MANAGER",
    MEMBER = "MEMBER",

