from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class CreateTicketResponse(Parsable):
    # The success property
    success: Optional[bool] = None
    # Created ticket ID.
    ticket_id: Optional[str] = None
    # Human-facing sequential ticket number.
    ticket_number: Optional[int] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateTicketResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateTicketResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateTicketResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
            "ticketId": lambda n : setattr(self, 'ticket_id', n.get_str_value()),
            "ticketNumber": lambda n : setattr(self, 'ticket_number', n.get_int_value()),
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
        writer.write_bool_value("success", self.success)
        writer.write_str_value("ticketId", self.ticket_id)
        writer.write_int_value("ticketNumber", self.ticket_number)
        writer.write_str_value("timestamp", self.timestamp)
    

