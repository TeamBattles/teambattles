from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .ticket_summary_created_at import TicketSummary_createdAt
    from .ticket_summary_priority import TicketSummary_priority
    from .ticket_summary_status import TicketSummary_status
    from .ticket_summary_updated_at import TicketSummary_updatedAt

@dataclass
class TicketSummary(Parsable):
    # The category property
    category: Optional[str] = None
    # The createdAt property
    created_at: Optional[TicketSummary_createdAt] = None
    # The id property
    id: Optional[str] = None
    # The priority property
    priority: Optional[TicketSummary_priority] = None
    # The status property
    status: Optional[TicketSummary_status] = None
    # The subject property
    subject: Optional[str] = None
    # The ticketNumber property
    ticket_number: Optional[int] = None
    # The updatedAt property
    updated_at: Optional[TicketSummary_updatedAt] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TicketSummary:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TicketSummary
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TicketSummary()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .ticket_summary_created_at import TicketSummary_createdAt
        from .ticket_summary_priority import TicketSummary_priority
        from .ticket_summary_status import TicketSummary_status
        from .ticket_summary_updated_at import TicketSummary_updatedAt

        from .ticket_summary_created_at import TicketSummary_createdAt
        from .ticket_summary_priority import TicketSummary_priority
        from .ticket_summary_status import TicketSummary_status
        from .ticket_summary_updated_at import TicketSummary_updatedAt

        fields: dict[str, Callable[[Any], None]] = {
            "category": lambda n : setattr(self, 'category', n.get_str_value()),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(TicketSummary_createdAt)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "priority": lambda n : setattr(self, 'priority', n.get_enum_value(TicketSummary_priority)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TicketSummary_status)),
            "subject": lambda n : setattr(self, 'subject', n.get_str_value()),
            "ticketNumber": lambda n : setattr(self, 'ticket_number', n.get_int_value()),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_object_value(TicketSummary_updatedAt)),
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
        writer.write_str_value("category", self.category)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_str_value("id", self.id)
        writer.write_enum_value("priority", self.priority)
        writer.write_enum_value("status", self.status)
        writer.write_str_value("subject", self.subject)
        writer.write_int_value("ticketNumber", self.ticket_number)
        writer.write_object_value("updatedAt", self.updated_at)
    

