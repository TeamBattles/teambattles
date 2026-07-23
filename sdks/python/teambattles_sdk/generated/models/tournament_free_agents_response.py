from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_free_agent import TournamentFreeAgent

@dataclass
class TournamentFreeAgentsResponse(Parsable):
    """
    The tournament free-agent pool.
    """
    # Number of free agents returned.
    count: Optional[int] = None
    # Free agents currently AVAILABLE in the pool.
    free_agents: Optional[list[TournamentFreeAgent]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentFreeAgentsResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentFreeAgentsResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentFreeAgentsResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_free_agent import TournamentFreeAgent

        from .tournament_free_agent import TournamentFreeAgent

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "freeAgents": lambda n : setattr(self, 'free_agents', n.get_collection_of_object_values(TournamentFreeAgent)),
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
        writer.write_int_value("count", self.count)
        writer.write_collection_of_object_values("freeAgents", self.free_agents)
        writer.write_str_value("timestamp", self.timestamp)
    

