from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentTeamEntryResponse(Parsable):
    """
    The participant row created (or reused) by an entry or application.
    """
    # The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
    participant_id: Optional[str] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentTeamEntryResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentTeamEntryResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentTeamEntryResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "participantId": lambda n : setattr(self, 'participant_id', n.get_str_value()),
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
        writer.write_str_value("participantId", self.participant_id)
        writer.write_str_value("timestamp", self.timestamp)
    

