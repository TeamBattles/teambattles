from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .create_league_ticket_request_body_priority import CreateLeagueTicketRequestBody_priority

@dataclass
class CreateLeagueTicketRequestBody(AdditionalDataHolder, Parsable):
    """
    Creates a league-scoped support ticket.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The description property
    description: Optional[str] = None
    # The priority property
    priority: Optional[CreateLeagueTicketRequestBody_priority] = None
    # The subject property
    subject: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateLeagueTicketRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateLeagueTicketRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateLeagueTicketRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .create_league_ticket_request_body_priority import CreateLeagueTicketRequestBody_priority

        from .create_league_ticket_request_body_priority import CreateLeagueTicketRequestBody_priority

        fields: dict[str, Callable[[Any], None]] = {
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "priority": lambda n : setattr(self, 'priority', n.get_enum_value(CreateLeagueTicketRequestBody_priority)),
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
        writer.write_str_value("description", self.description)
        writer.write_enum_value("priority", self.priority)
        writer.write_str_value("subject", self.subject)
        writer.write_additional_data_value(self.additional_data)
    

