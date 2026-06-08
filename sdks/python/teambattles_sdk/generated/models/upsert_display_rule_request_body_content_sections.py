from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class UpsertDisplayRuleRequestBody_content_sections(AdditionalDataHolder, Parsable):
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The heading property
    heading: Optional[str] = None
    # The items property
    items: Optional[list[str]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpsertDisplayRuleRequestBody_content_sections:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpsertDisplayRuleRequestBody_content_sections
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpsertDisplayRuleRequestBody_content_sections()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "heading": lambda n : setattr(self, 'heading', n.get_str_value()),
            "items": lambda n : setattr(self, 'items', n.get_collection_of_primitive_values(str)),
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
        writer.write_str_value("heading", self.heading)
        writer.write_collection_of_primitive_values("items", self.items)
        writer.write_additional_data_value(self.additional_data)
    

