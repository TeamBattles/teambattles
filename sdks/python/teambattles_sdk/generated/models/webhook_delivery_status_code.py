from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .webhook_delivery_status_code_member1 import WebhookDelivery_statusCodeMember1

@dataclass
class WebhookDelivery_statusCode(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes int, WebhookDelivery_statusCodeMember1
    """
    # Composed type representation for type int
    integer: Optional[int] = None
    # Composed type representation for type WebhookDelivery_statusCodeMember1
    webhook_delivery_status_code_member1: Optional[WebhookDelivery_statusCodeMember1] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> WebhookDelivery_statusCode:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: WebhookDelivery_statusCode
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = WebhookDelivery_statusCode()
        if integer_value := parse_node.get_int_value():
            result.integer = integer_value
        else:
            from .webhook_delivery_status_code_member1 import WebhookDelivery_statusCodeMember1

            result.webhook_delivery_status_code_member1 = WebhookDelivery_statusCodeMember1()
        return result

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .webhook_delivery_status_code_member1 import WebhookDelivery_statusCodeMember1

        if self.webhook_delivery_status_code_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.webhook_delivery_status_code_member1)
        return {}

    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        if self.integer:
            writer.write_int_value(None, self.integer)
        else:
            writer.write_object_value(None, self.webhook_delivery_status_code_member1)
