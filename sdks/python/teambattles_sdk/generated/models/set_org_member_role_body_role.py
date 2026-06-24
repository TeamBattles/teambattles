from enum import Enum

class SetOrgMemberRoleBody_role(str, Enum):
    ADMIN = "ADMIN",
    MANAGER = "MANAGER",
    MEMBER = "MEMBER",

