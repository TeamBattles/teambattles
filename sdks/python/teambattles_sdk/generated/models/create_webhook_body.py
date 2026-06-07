from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class CreateWebhookBody(AdditionalDataHolder, Parsable):
    """
    Create a webhook endpoint in the caller's scope.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Subscribed event tokens: exact catalog names (e.g. match.completed) or family wildcards (e.g. match.*). At least one required.
    events: Optional[list[str]] = None
    # Optional human label for the endpoint.
    label: Optional[str] = None
    # HTTPS endpoint URL. Private/loopback/metadata hosts are rejected.
    url: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateWebhookBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateWebhookBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateWebhookBody()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "events": lambda n : setattr(self, 'events', n.get_collection_of_primitive_values(str)),
            "label": lambda n : setattr(self, 'label', n.get_str_value()),
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
        writer.write_collection_of_primitive_values("events", self.events)
        writer.write_str_value("label", self.label)
        writer.write_str_value("url", self.url)
        writer.write_additional_data_value(self.additional_data)
