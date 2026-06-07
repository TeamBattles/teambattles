from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_playlist_description_key import ApiGamePlaylist_descriptionKey
    from .api_game_playlist_image import ApiGamePlaylist_image

@dataclass
class ApiGamePlaylist(Parsable):
    """
    Game-scoped playlist definition.
    """
    # The allowedGameModeIds property
    allowed_game_mode_ids: Optional[list[str]] = None
    # The descriptionKey property
    description_key: Optional[ApiGamePlaylist_descriptionKey] = None
    # The id property
    id: Optional[str] = None
    # The image property
    image: Optional[ApiGamePlaylist_image] = None
    # The nameKey property
    name_key: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGamePlaylist:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGamePlaylist
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGamePlaylist()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_playlist_description_key import ApiGamePlaylist_descriptionKey
        from .api_game_playlist_image import ApiGamePlaylist_image

        from .api_game_playlist_description_key import ApiGamePlaylist_descriptionKey
        from .api_game_playlist_image import ApiGamePlaylist_image

        fields: dict[str, Callable[[Any], None]] = {
            "allowedGameModeIds": lambda n : setattr(self, 'allowed_game_mode_ids', n.get_collection_of_primitive_values(str)),
            "descriptionKey": lambda n : setattr(self, 'description_key', n.get_object_value(ApiGamePlaylist_descriptionKey)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "image": lambda n : setattr(self, 'image', n.get_object_value(ApiGamePlaylist_image)),
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
        writer.write_collection_of_primitive_values("allowedGameModeIds", self.allowed_game_mode_ids)
        writer.write_object_value("descriptionKey", self.description_key)
        writer.write_str_value("id", self.id)
        writer.write_object_value("image", self.image)
        writer.write_str_value("nameKey", self.name_key)
