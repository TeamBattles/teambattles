from enum import Enum

class CreateMatchRequestBody_publishStatus(str, Enum):
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    ARCHIVED = "ARCHIVED",

