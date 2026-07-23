from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_free_agent_status import TournamentFreeAgentStatus

@dataclass
class MyTournamentFreeAgent(Parsable):
    """
    The caller's own free-agent pool row.
    """
    # Pool join time (epoch milliseconds).
    created_at: Optional[float] = None
    # Free-agent row ID.
    free_agent_id: Optional[str] = None
    # Free-text note the caller supplied.
    note: Optional[str] = None
    # Participant who picked the caller up. Present only when PICKED_UP.
    picked_up_by_participant_id: Optional[str] = None
    # State of the caller's free-agent pool row.
    status: Optional[TournamentFreeAgentStatus] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MyTournamentFreeAgent:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MyTournamentFreeAgent
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MyTournamentFreeAgent()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_free_agent_status import TournamentFreeAgentStatus

        from .tournament_free_agent_status import TournamentFreeAgentStatus

        fields: dict[str, Callable[[Any], None]] = {
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "freeAgentId": lambda n : setattr(self, 'free_agent_id', n.get_str_value()),
            "note": lambda n : setattr(self, 'note', n.get_str_value()),
            "pickedUpByParticipantId": lambda n : setattr(self, 'picked_up_by_participant_id', n.get_str_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentFreeAgentStatus)),
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
        writer.write_float_value("createdAt", self.created_at)
        writer.write_str_value("freeAgentId", self.free_agent_id)
        writer.write_str_value("note", self.note)
        writer.write_str_value("pickedUpByParticipantId", self.picked_up_by_participant_id)
        writer.write_enum_value("status", self.status)
    

