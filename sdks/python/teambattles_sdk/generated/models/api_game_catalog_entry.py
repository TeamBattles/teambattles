from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_catalog_entry_banner_image import ApiGameCatalogEntry_bannerImage
    from .api_game_catalog_entry_convex_id import ApiGameCatalogEntry_convexId
    from .api_game_catalog_entry_cover_image import ApiGameCatalogEntry_coverImage
    from .api_game_catalog_entry_description_key import ApiGameCatalogEntry_descriptionKey
    from .api_game_catalog_entry_rules_link import ApiGameCatalogEntry_rulesLink
    from .api_game_catalog_entry_short_name_key import ApiGameCatalogEntry_shortNameKey
    from .api_game_map import ApiGameMap
    from .api_game_mode import ApiGameMode
    from .api_game_mode_map_pool import ApiGameModeMapPool
    from .api_game_playlist import ApiGamePlaylist

@dataclass
class ApiGameCatalogEntry(Parsable):
    """
    Static public game catalog entry.
    """
    # The bannerImage property
    banner_image: Optional[ApiGameCatalogEntry_bannerImage] = None
    # The category property
    category: Optional[str] = None
    # Active Convex games-table ID, when available for match APIs.
    convex_id: Optional[ApiGameCatalogEntry_convexId] = None
    # The coverImage property
    cover_image: Optional[ApiGameCatalogEntry_coverImage] = None
    # The defaultTeamSize property
    default_team_size: Optional[int] = None
    # The descriptionKey property
    description_key: Optional[ApiGameCatalogEntry_descriptionKey] = None
    # The hasCompetitiveMode property
    has_competitive_mode: Optional[bool] = None
    # Static public game ID/slug.
    id: Optional[str] = None
    # The isAvailableForMatchApi property
    is_available_for_match_api: Optional[bool] = None
    # The isComingSoon property
    is_coming_soon: Optional[bool] = None
    # The maps property
    maps: Optional[list[ApiGameMap]] = None
    # The modeMapPools property
    mode_map_pools: Optional[list[ApiGameModeMapPool]] = None
    # The modes property
    modes: Optional[list[ApiGameMode]] = None
    # The nameKey property
    name_key: Optional[str] = None
    # The playlists property
    playlists: Optional[list[ApiGamePlaylist]] = None
    # The rulesLink property
    rules_link: Optional[ApiGameCatalogEntry_rulesLink] = None
    # The shortNameKey property
    short_name_key: Optional[ApiGameCatalogEntry_shortNameKey] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameCatalogEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameCatalogEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGameCatalogEntry()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_catalog_entry_banner_image import ApiGameCatalogEntry_bannerImage
        from .api_game_catalog_entry_convex_id import ApiGameCatalogEntry_convexId
        from .api_game_catalog_entry_cover_image import ApiGameCatalogEntry_coverImage
        from .api_game_catalog_entry_description_key import ApiGameCatalogEntry_descriptionKey
        from .api_game_catalog_entry_rules_link import ApiGameCatalogEntry_rulesLink
        from .api_game_catalog_entry_short_name_key import ApiGameCatalogEntry_shortNameKey
        from .api_game_map import ApiGameMap
        from .api_game_mode import ApiGameMode
        from .api_game_mode_map_pool import ApiGameModeMapPool
        from .api_game_playlist import ApiGamePlaylist

        from .api_game_catalog_entry_banner_image import ApiGameCatalogEntry_bannerImage
        from .api_game_catalog_entry_convex_id import ApiGameCatalogEntry_convexId
        from .api_game_catalog_entry_cover_image import ApiGameCatalogEntry_coverImage
        from .api_game_catalog_entry_description_key import ApiGameCatalogEntry_descriptionKey
        from .api_game_catalog_entry_rules_link import ApiGameCatalogEntry_rulesLink
        from .api_game_catalog_entry_short_name_key import ApiGameCatalogEntry_shortNameKey
        from .api_game_map import ApiGameMap
        from .api_game_mode import ApiGameMode
        from .api_game_mode_map_pool import ApiGameModeMapPool
        from .api_game_playlist import ApiGamePlaylist

        fields: dict[str, Callable[[Any], None]] = {
            "bannerImage": lambda n : setattr(self, 'banner_image', n.get_object_value(ApiGameCatalogEntry_bannerImage)),
            "category": lambda n : setattr(self, 'category', n.get_str_value()),
            "convexId": lambda n : setattr(self, 'convex_id', n.get_object_value(ApiGameCatalogEntry_convexId)),
            "coverImage": lambda n : setattr(self, 'cover_image', n.get_object_value(ApiGameCatalogEntry_coverImage)),
            "defaultTeamSize": lambda n : setattr(self, 'default_team_size', n.get_int_value()),
            "descriptionKey": lambda n : setattr(self, 'description_key', n.get_object_value(ApiGameCatalogEntry_descriptionKey)),
            "hasCompetitiveMode": lambda n : setattr(self, 'has_competitive_mode', n.get_bool_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isAvailableForMatchApi": lambda n : setattr(self, 'is_available_for_match_api', n.get_bool_value()),
            "isComingSoon": lambda n : setattr(self, 'is_coming_soon', n.get_bool_value()),
            "maps": lambda n : setattr(self, 'maps', n.get_collection_of_object_values(ApiGameMap)),
            "modeMapPools": lambda n : setattr(self, 'mode_map_pools', n.get_collection_of_object_values(ApiGameModeMapPool)),
            "modes": lambda n : setattr(self, 'modes', n.get_collection_of_object_values(ApiGameMode)),
            "nameKey": lambda n : setattr(self, 'name_key', n.get_str_value()),
            "playlists": lambda n : setattr(self, 'playlists', n.get_collection_of_object_values(ApiGamePlaylist)),
            "rulesLink": lambda n : setattr(self, 'rules_link', n.get_object_value(ApiGameCatalogEntry_rulesLink)),
            "shortNameKey": lambda n : setattr(self, 'short_name_key', n.get_object_value(ApiGameCatalogEntry_shortNameKey)),
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
        writer.write_object_value("bannerImage", self.banner_image)
        writer.write_str_value("category", self.category)
        writer.write_object_value("convexId", self.convex_id)
        writer.write_object_value("coverImage", self.cover_image)
        writer.write_int_value("defaultTeamSize", self.default_team_size)
        writer.write_object_value("descriptionKey", self.description_key)
        writer.write_bool_value("hasCompetitiveMode", self.has_competitive_mode)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isAvailableForMatchApi", self.is_available_for_match_api)
        writer.write_bool_value("isComingSoon", self.is_coming_soon)
        writer.write_collection_of_object_values("maps", self.maps)
        writer.write_collection_of_object_values("modeMapPools", self.mode_map_pools)
        writer.write_collection_of_object_values("modes", self.modes)
        writer.write_str_value("nameKey", self.name_key)
        writer.write_collection_of_object_values("playlists", self.playlists)
        writer.write_object_value("rulesLink", self.rules_link)
        writer.write_object_value("shortNameKey", self.short_name_key)
    

