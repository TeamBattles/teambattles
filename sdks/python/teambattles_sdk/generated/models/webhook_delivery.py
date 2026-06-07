from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .webhook_delivery_delivered_at import WebhookDelivery_deliveredAt
    from .webhook_delivery_error_message import WebhookDelivery_errorMessage
    from .webhook_delivery_next_attempt_at import WebhookDelivery_nextAttemptAt
    from .webhook_delivery_status import WebhookDelivery_status
    from .webhook_delivery_status_code import WebhookDelivery_statusCode

@dataclass
class WebhookDelivery(Parsable):
    """
    A single webhook delivery-log row.
    """
    # Number of delivery attempts made.
    attempt_count: Optional[int] = None
    # Emit/creation epoch ms (retention key).
    created_at: Optional[float] = None
    # Epoch ms of successful delivery, or null.
    delivered_at: Optional[WebhookDelivery_deliveredAt] = None
    # Last error message, or null.
    error_message: Optional[WebhookDelivery_errorMessage] = None
    # The delivered event name.
    event: Optional[str] = None
    # Delivery-log row id.
    id: Optional[str] = None
    # Stable evt_ id, reused across retries (idempotency key).
    idempotency_id: Optional[str] = None
    # True for test.ping deliveries.
    is_test: Optional[bool] = None
    # Epoch ms of the next scheduled retry, or null.
    next_attempt_at: Optional[WebhookDelivery_nextAttemptAt] = None
    # Lifecycle status of one logical delivery (endpoint x idempotency id).
    status: Optional[WebhookDelivery_status] = None
    # Last HTTP response status, or null.
    status_code: Optional[WebhookDelivery_statusCode] = None
    # Last update epoch ms.
    updated_at: Optional[float] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> WebhookDelivery:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: WebhookDelivery
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return WebhookDelivery()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .webhook_delivery_delivered_at import WebhookDelivery_deliveredAt
        from .webhook_delivery_error_message import WebhookDelivery_errorMessage
        from .webhook_delivery_next_attempt_at import WebhookDelivery_nextAttemptAt
        from .webhook_delivery_status import WebhookDelivery_status
        from .webhook_delivery_status_code import WebhookDelivery_statusCode

        from .webhook_delivery_delivered_at import WebhookDelivery_deliveredAt
        from .webhook_delivery_error_message import WebhookDelivery_errorMessage
        from .webhook_delivery_next_attempt_at import WebhookDelivery_nextAttemptAt
        from .webhook_delivery_status import WebhookDelivery_status
        from .webhook_delivery_status_code import WebhookDelivery_statusCode

        fields: dict[str, Callable[[Any], None]] = {
            "attemptCount": lambda n : setattr(self, 'attempt_count', n.get_int_value()),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "deliveredAt": lambda n : setattr(self, 'delivered_at', n.get_object_value(WebhookDelivery_deliveredAt)),
            "errorMessage": lambda n : setattr(self, 'error_message', n.get_object_value(WebhookDelivery_errorMessage)),
            "event": lambda n : setattr(self, 'event', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "idempotencyId": lambda n : setattr(self, 'idempotency_id', n.get_str_value()),
            "isTest": lambda n : setattr(self, 'is_test', n.get_bool_value()),
            "nextAttemptAt": lambda n : setattr(self, 'next_attempt_at', n.get_object_value(WebhookDelivery_nextAttemptAt)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(WebhookDelivery_status)),
            "statusCode": lambda n : setattr(self, 'status_code', n.get_object_value(WebhookDelivery_statusCode)),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_float_value()),
        }
        return fields

    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        writer.write_int_value("attemptCount", self.attempt_count)
        writer.write_float_value("createdAt", self.created_at)
        writer.write_object_value("deliveredAt", self.delivered_at)
        writer.write_object_value("errorMessage", self.error_message)
        writer.write_str_value("event", self.event)
        writer.write_str_value("id", self.id)
        writer.write_str_value("idempotencyId", self.idempotency_id)
        writer.write_bool_value("isTest", self.is_test)
        writer.write_object_value("nextAttemptAt", self.next_attempt_at)
        writer.write_enum_value("status", self.status)
        writer.write_object_value("statusCode", self.status_code)
        writer.write_float_value("updatedAt", self.updated_at)
