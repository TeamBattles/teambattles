from enum import Enum

class CreateTicketRequestBody_category(str, Enum):
    Account = "account",
    Technical_bug = "technical_bug",
    Feature_request = "feature_request",
    Billing = "billing",
    Other = "other",

