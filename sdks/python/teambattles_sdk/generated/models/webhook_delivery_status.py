from enum import Enum

class WebhookDelivery_status(str, Enum):
    Pending = "pending",
    Delivering = "delivering",
    Delivered = "delivered",
    Failed = "failed",
    Dead_lettered = "dead_lettered",

