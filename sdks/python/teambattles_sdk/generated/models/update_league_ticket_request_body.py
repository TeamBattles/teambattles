from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .update_league_ticket_request_body_assigned_to import UpdateLeagueTicketRequestBody_assignedTo
    from .update_league_ticket_request_body_priority import UpdateLeagueTicketRequestBody_priority
    from .update_league_ticket_request_body_status import UpdateLeagueTicketRequestBody_status

@dataclass
class UpdateLeagueTicketRequestBody(AdditionalDataHolder, Parsable):
    """
    Updates league ticket status, priority, or assignment.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # User ID to assign, or null to clear assignment.
    assigned_to: Optional[UpdateLeagueTicketRequestBody_assignedTo] = None
    # The priority property
    priority: Optional[UpdateLeagueTicketRequestBody_priority] = None
    # The status property
    status: Optional[UpdateLeagueTicketRequestBody_status] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateLeagueTicketRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateLeagueTicketRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateLeagueTicketRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .update_league_ticket_request_body_assigned_to import UpdateLeagueTicketRequestBody_assignedTo
        from .update_league_ticket_request_body_priority import UpdateLeagueTicketRequestBody_priority
        from .update_league_ticket_request_body_status import UpdateLeagueTicketRequestBody_status

        from .update_league_ticket_request_body_assigned_to import UpdateLeagueTicketRequestBody_assignedTo
        from .update_league_ticket_request_body_priority import UpdateLeagueTicketRequestBody_priority
        from .update_league_ticket_request_body_status import UpdateLeagueTicketRequestBody_status

        fields: dict[str, Callable[[Any], None]] = {
            "assignedTo": lambda n : setattr(self, 'assigned_to', n.get_object_value(UpdateLeagueTicketRequestBody_assignedTo)),
            "priority": lambda n : setattr(self, 'priority', n.get_enum_value(UpdateLeagueTicketRequestBody_priority)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(UpdateLeagueTicketRequestBody_status)),
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
        writer.write_object_value("assignedTo", self.assigned_to)
        writer.write_enum_value("priority", self.priority)
        writer.write_enum_value("status", self.status)
        writer.write_additional_data_value(self.additional_data)
    

