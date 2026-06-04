from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_match_detail import GameMatchDetail

@dataclass
class GameMatchDetailResponse(Parsable):
    """
    Envelope for GET /game/matches/{matchId}: the match plus a response timestamp.
    """
    # Detailed match payload returned inside the game-developer match-detail response.
    match: Optional[GameMatchDetail] = None
    # Server response time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameMatchDetailResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameMatchDetailResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameMatchDetailResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_match_detail import GameMatchDetail

        from .game_match_detail import GameMatchDetail

        fields: dict[str, Callable[[Any], None]] = {
            "match": lambda n : setattr(self, 'match', n.get_object_value(GameMatchDetail)),
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
        writer.write_object_value("match", self.match)
        writer.write_str_value("timestamp", self.timestamp)
    

