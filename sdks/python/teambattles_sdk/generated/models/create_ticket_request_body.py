from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .create_ticket_request_body_category import CreateTicketRequestBody_category

@dataclass
class CreateTicketRequestBody(AdditionalDataHolder, Parsable):
    """
    Creates a self-filed support ticket owned by the API key owner.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Support category. Entity-bound and staff-only categories are rejected.
    category: Optional[CreateTicketRequestBody_category] = None
    # Initial message / description (max 2000 chars).
    description: Optional[str] = None
    # Optional storage IDs (from /uploads/image-url) to attach (max 10).
    images: Optional[list[str]] = None
    # Ticket subject (max 150 chars).
    subject: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateTicketRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateTicketRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateTicketRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .create_ticket_request_body_category import CreateTicketRequestBody_category

        from .create_ticket_request_body_category import CreateTicketRequestBody_category

        fields: dict[str, Callable[[Any], None]] = {
            "category": lambda n : setattr(self, 'category', n.get_enum_value(CreateTicketRequestBody_category)),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "images": lambda n : setattr(self, 'images', n.get_collection_of_primitive_values(str)),
            "subject": lambda n : setattr(self, 'subject', n.get_str_value()),
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
        writer.write_enum_value("category", self.category)
        writer.write_str_value("description", self.description)
        writer.write_collection_of_primitive_values("images", self.images)
        writer.write_str_value("subject", self.subject)
        writer.write_additional_data_value(self.additional_data)
    

