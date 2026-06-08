from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ApiGameModeMapPool(Parsable):
    """
    Game-scoped map pool for a single mode.
    """
    # The mapIds property
    map_ids: Optional[list[str]] = None
    # The modeId property
    mode_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameModeMapPool:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameModeMapPool
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGameModeMapPool()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "mapIds": lambda n : setattr(self, 'map_ids', n.get_collection_of_primitive_values(str)),
            "modeId": lambda n : setattr(self, 'mode_id', n.get_str_value()),
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
        writer.write_collection_of_primitive_values("mapIds", self.map_ids)
        writer.write_str_value("modeId", self.mode_id)
    

