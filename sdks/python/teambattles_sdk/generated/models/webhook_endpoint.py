from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .webhook_endpoint_label import WebhookEndpoint_label
    from .webhook_endpoint_last_delivered_at import WebhookEndpoint_lastDeliveredAt
    from .webhook_endpoint_last_failed_at import WebhookEndpoint_lastFailedAt
    from .webhook_endpoint_scope_type import WebhookEndpoint_scopeType

@dataclass
class WebhookEndpoint(Parsable):
    """
    A webhook endpoint (no secret material).
    """
    # Creation epoch ms.
    created_at: Optional[float] = None
    # Subscribed event tokens.
    events: Optional[list[str]] = None
    # Consecutive dead-lettered deliveries (auto-disables at 50).
    failure_count: Optional[int] = None
    # Webhook endpoint id.
    id: Optional[str] = None
    # Whether the endpoint receives deliveries.
    is_active: Optional[bool] = None
    # Human label, or null.
    label: Optional[WebhookEndpoint_label] = None
    # Epoch ms of the last successful delivery, or null.
    last_delivered_at: Optional[WebhookEndpoint_lastDeliveredAt] = None
    # Epoch ms of the last failed delivery, or null.
    last_failed_at: Optional[WebhookEndpoint_lastFailedAt] = None
    # Stringified bound scope id.
    scope_id: Optional[str] = None
    # The single scope dimension an endpoint is bound to.
    scope_type: Optional[WebhookEndpoint_scopeType] = None
    # First 8 chars of the current signing secret (display only).
    secret_prefix: Optional[str] = None
    # Last update epoch ms.
    updated_at: Optional[float] = None
    # Delivery URL.
    url: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> WebhookEndpoint:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: WebhookEndpoint
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return WebhookEndpoint()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .webhook_endpoint_label import WebhookEndpoint_label
        from .webhook_endpoint_last_delivered_at import WebhookEndpoint_lastDeliveredAt
        from .webhook_endpoint_last_failed_at import WebhookEndpoint_lastFailedAt
        from .webhook_endpoint_scope_type import WebhookEndpoint_scopeType

        from .webhook_endpoint_label import WebhookEndpoint_label
        from .webhook_endpoint_last_delivered_at import WebhookEndpoint_lastDeliveredAt
        from .webhook_endpoint_last_failed_at import WebhookEndpoint_lastFailedAt
        from .webhook_endpoint_scope_type import WebhookEndpoint_scopeType

        fields: dict[str, Callable[[Any], None]] = {
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "events": lambda n : setattr(self, 'events', n.get_collection_of_primitive_values(str)),
            "failureCount": lambda n : setattr(self, 'failure_count', n.get_int_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isActive": lambda n : setattr(self, 'is_active', n.get_bool_value()),
            "label": lambda n : setattr(self, 'label', n.get_object_value(WebhookEndpoint_label)),
            "lastDeliveredAt": lambda n : setattr(self, 'last_delivered_at', n.get_object_value(WebhookEndpoint_lastDeliveredAt)),
            "lastFailedAt": lambda n : setattr(self, 'last_failed_at', n.get_object_value(WebhookEndpoint_lastFailedAt)),
            "scopeId": lambda n : setattr(self, 'scope_id', n.get_str_value()),
            "scopeType": lambda n : setattr(self, 'scope_type', n.get_enum_value(WebhookEndpoint_scopeType)),
            "secretPrefix": lambda n : setattr(self, 'secret_prefix', n.get_str_value()),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_float_value()),
            "url": lambda n : setattr(self, 'url', n.get_str_value()),
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
        writer.write_float_value("createdAt", self.created_at)
        writer.write_collection_of_primitive_values("events", self.events)
        writer.write_int_value("failureCount", self.failure_count)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isActive", self.is_active)
        writer.write_object_value("label", self.label)
        writer.write_object_value("lastDeliveredAt", self.last_delivered_at)
        writer.write_object_value("lastFailedAt", self.last_failed_at)
        writer.write_str_value("scopeId", self.scope_id)
        writer.write_enum_value("scopeType", self.scope_type)
        writer.write_str_value("secretPrefix", self.secret_prefix)
        writer.write_float_value("updatedAt", self.updated_at)
        writer.write_str_value("url", self.url)
    

