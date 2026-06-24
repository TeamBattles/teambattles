from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class CreateOrgResponse(Parsable):
    # The created organization ID.
    id: Optional[str] = None
    # The created organization slug.
    slug: Optional[str] = None
    # The success property
    success: Optional[bool] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateOrgResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateOrgResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateOrgResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
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
        writer.write_str_value("id", self.id)
        writer.write_str_value("slug", self.slug)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

