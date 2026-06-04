from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class GameSingleMapScoreResponse(Parsable):
    """
    Result of submitting a single map score.
    """
    # Index of the map that was scored.
    map_index: Optional[int] = None
    # Confirmation state, always "CONFIRMED" on success.
    score_status: Optional[str] = None
    # The success property
    success: Optional[bool] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameSingleMapScoreResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameSingleMapScoreResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameSingleMapScoreResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "scoreStatus": lambda n : setattr(self, 'score_status', n.get_str_value()),
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
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
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_str_value("scoreStatus", self.score_status)
        writer.write_bool_value("success", self.success)
    

