from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .webhook_endpoint_label_member1 import WebhookEndpoint_labelMember1

@dataclass
class WebhookEndpoint_label(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes str, WebhookEndpoint_labelMember1
    """
    # Composed type representation for type str
    string: Optional[str] = None
    # Composed type representation for type WebhookEndpoint_labelMember1
    webhook_endpoint_label_member1: Optional[WebhookEndpoint_labelMember1] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> WebhookEndpoint_label:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: WebhookEndpoint_label
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = WebhookEndpoint_label()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .webhook_endpoint_label_member1 import WebhookEndpoint_labelMember1

            result.webhook_endpoint_label_member1 = WebhookEndpoint_labelMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .webhook_endpoint_label_member1 import WebhookEndpoint_labelMember1

        if self.webhook_endpoint_label_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.webhook_endpoint_label_member1)
        return {}
    
    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        if self.string:
            writer.write_str_value(None, self.string)
        else:
            writer.write_object_value(None, self.webhook_endpoint_label_member1)
    

