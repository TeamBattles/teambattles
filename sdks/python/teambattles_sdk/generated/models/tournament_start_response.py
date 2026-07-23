from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentStartResponse(Parsable):
    """
    Acknowledgement that a tournament was started. Matches follow asynchronously.
    """
    # The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
    accepted: Optional[bool] = None
    # Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
    match_generation: Optional[str] = None
    # Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
    node_count: Optional[int] = None
    # The lifecycle status this call set.
    status: Optional[str] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentStartResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentStartResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentStartResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "accepted": lambda n : setattr(self, 'accepted', n.get_bool_value()),
            "matchGeneration": lambda n : setattr(self, 'match_generation', n.get_str_value()),
            "nodeCount": lambda n : setattr(self, 'node_count', n.get_int_value()),
            "status": lambda n : setattr(self, 'status', n.get_str_value()),
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
        writer.write_bool_value("accepted", self.accepted)
        writer.write_str_value("matchGeneration", self.match_generation)
        writer.write_int_value("nodeCount", self.node_count)
        writer.write_str_value("status", self.status)
        writer.write_str_value("timestamp", self.timestamp)
    

