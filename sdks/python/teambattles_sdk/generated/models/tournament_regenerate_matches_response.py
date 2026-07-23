from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentRegenerateMatchesResponse(Parsable):
    """
    Acknowledgement that match regeneration was scheduled.
    """
    # An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
    queued: Optional[int] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentRegenerateMatchesResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentRegenerateMatchesResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentRegenerateMatchesResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "queued": lambda n : setattr(self, 'queued', n.get_int_value()),
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
        writer.write_int_value("queued", self.queued)
        writer.write_str_value("timestamp", self.timestamp)
    

