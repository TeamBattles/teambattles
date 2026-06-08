from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .ticket_detail_closed_at import TicketDetail_closedAt
    from .ticket_detail_created_at import TicketDetail_createdAt
    from .ticket_detail_messages import TicketDetail_messages
    from .ticket_detail_priority import TicketDetail_priority
    from .ticket_detail_resolved_at import TicketDetail_resolvedAt
    from .ticket_detail_status import TicketDetail_status
    from .ticket_detail_updated_at import TicketDetail_updatedAt

@dataclass
class TicketDetail(Parsable):
    # The category property
    category: Optional[str] = None
    # The closedAt property
    closed_at: Optional[TicketDetail_closedAt] = None
    # The createdAt property
    created_at: Optional[TicketDetail_createdAt] = None
    # The description property
    description: Optional[str] = None
    # The id property
    id: Optional[str] = None
    # The messages property
    messages: Optional[list[TicketDetail_messages]] = None
    # The priority property
    priority: Optional[TicketDetail_priority] = None
    # The resolvedAt property
    resolved_at: Optional[TicketDetail_resolvedAt] = None
    # The status property
    status: Optional[TicketDetail_status] = None
    # The subject property
    subject: Optional[str] = None
    # The ticketNumber property
    ticket_number: Optional[int] = None
    # The timestamp property
    timestamp: Optional[str] = None
    # The updatedAt property
    updated_at: Optional[TicketDetail_updatedAt] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TicketDetail:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TicketDetail
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TicketDetail()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .ticket_detail_closed_at import TicketDetail_closedAt
        from .ticket_detail_created_at import TicketDetail_createdAt
        from .ticket_detail_messages import TicketDetail_messages
        from .ticket_detail_priority import TicketDetail_priority
        from .ticket_detail_resolved_at import TicketDetail_resolvedAt
        from .ticket_detail_status import TicketDetail_status
        from .ticket_detail_updated_at import TicketDetail_updatedAt

        from .ticket_detail_closed_at import TicketDetail_closedAt
        from .ticket_detail_created_at import TicketDetail_createdAt
        from .ticket_detail_messages import TicketDetail_messages
        from .ticket_detail_priority import TicketDetail_priority
        from .ticket_detail_resolved_at import TicketDetail_resolvedAt
        from .ticket_detail_status import TicketDetail_status
        from .ticket_detail_updated_at import TicketDetail_updatedAt

        fields: dict[str, Callable[[Any], None]] = {
            "category": lambda n : setattr(self, 'category', n.get_str_value()),
            "closedAt": lambda n : setattr(self, 'closed_at', n.get_object_value(TicketDetail_closedAt)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(TicketDetail_createdAt)),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "messages": lambda n : setattr(self, 'messages', n.get_collection_of_object_values(TicketDetail_messages)),
            "priority": lambda n : setattr(self, 'priority', n.get_enum_value(TicketDetail_priority)),
            "resolvedAt": lambda n : setattr(self, 'resolved_at', n.get_object_value(TicketDetail_resolvedAt)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TicketDetail_status)),
            "subject": lambda n : setattr(self, 'subject', n.get_str_value()),
            "ticketNumber": lambda n : setattr(self, 'ticket_number', n.get_int_value()),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_object_value(TicketDetail_updatedAt)),
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
        writer.write_object_value("closedAt", self.closed_at)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_str_value("description", self.description)
        writer.write_str_value("id", self.id)
        writer.write_collection_of_object_values("messages", self.messages)
        writer.write_enum_value("priority", self.priority)
        writer.write_object_value("resolvedAt", self.resolved_at)
        writer.write_enum_value("status", self.status)
        writer.write_str_value("subject", self.subject)
        writer.write_int_value("ticketNumber", self.ticket_number)
        writer.write_str_value("timestamp", self.timestamp)
        writer.write_object_value("updatedAt", self.updated_at)
    

