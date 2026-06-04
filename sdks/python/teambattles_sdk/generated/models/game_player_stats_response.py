from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class GamePlayerStatsResponse(Parsable):
    """
    Result of a successful player-stats update.
    """
    # Operation performed, always "updated" on success.
    action: Optional[str] = None
    # Index of the map whose stats were updated.
    map_index: Optional[int] = None
    # The success property
    success: Optional[bool] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GamePlayerStatsResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GamePlayerStatsResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GamePlayerStatsResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "action": lambda n : setattr(self, 'action', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
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
        writer.write_str_value("action", self.action)
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_bool_value("success", self.success)
    

