from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_catalog_entry import ApiGameCatalogEntry
    from .api_game_playlist import ApiGamePlaylist

@dataclass
class ApiGamePlaylistsResponse(Parsable):
    """
    Game-scoped playlist response.
    """
    # Static public game catalog entry.
    game: Optional[ApiGameCatalogEntry] = None
    # The playlists property
    playlists: Optional[list[ApiGamePlaylist]] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGamePlaylistsResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGamePlaylistsResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGamePlaylistsResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_catalog_entry import ApiGameCatalogEntry
        from .api_game_playlist import ApiGamePlaylist

        from .api_game_catalog_entry import ApiGameCatalogEntry
        from .api_game_playlist import ApiGamePlaylist

        fields: dict[str, Callable[[Any], None]] = {
            "game": lambda n : setattr(self, 'game', n.get_object_value(ApiGameCatalogEntry)),
            "playlists": lambda n : setattr(self, 'playlists', n.get_collection_of_object_values(ApiGamePlaylist)),
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
        writer.write_object_value("game", self.game)
        writer.write_collection_of_object_values("playlists", self.playlists)
        writer.write_str_value("timestamp", self.timestamp)
    

