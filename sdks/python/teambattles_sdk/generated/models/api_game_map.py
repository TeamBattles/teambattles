from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_map_cover_image import ApiGameMap_coverImage
    from .api_game_map_minimap_image import ApiGameMap_minimapImage

@dataclass
class ApiGameMap(Parsable):
    """
    Static game map definition.
    """
    # The coverImage property
    cover_image: Optional[ApiGameMap_coverImage] = None
    # The id property
    id: Optional[str] = None
    # The isReleased property
    is_released: Optional[bool] = None
    # The minimapImage property
    minimap_image: Optional[ApiGameMap_minimapImage] = None
    # The nameKey property
    name_key: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameMap:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameMap
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGameMap()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_map_cover_image import ApiGameMap_coverImage
        from .api_game_map_minimap_image import ApiGameMap_minimapImage

        from .api_game_map_cover_image import ApiGameMap_coverImage
        from .api_game_map_minimap_image import ApiGameMap_minimapImage

        fields: dict[str, Callable[[Any], None]] = {
            "coverImage": lambda n : setattr(self, 'cover_image', n.get_object_value(ApiGameMap_coverImage)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isReleased": lambda n : setattr(self, 'is_released', n.get_bool_value()),
            "minimapImage": lambda n : setattr(self, 'minimap_image', n.get_object_value(ApiGameMap_minimapImage)),
            "nameKey": lambda n : setattr(self, 'name_key', n.get_str_value()),
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
        writer.write_object_value("coverImage", self.cover_image)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isReleased", self.is_released)
        writer.write_object_value("minimapImage", self.minimap_image)
        writer.write_str_value("nameKey", self.name_key)
