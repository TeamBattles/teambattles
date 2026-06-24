from enum import Enum

class AddOrgMemberBody_role(str, Enum):
    ADMIN = "ADMIN",
    MEMBER = "MEMBER",

