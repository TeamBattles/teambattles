from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_strategy_created_at import ApiStrategy_createdAt
    from .api_strategy_description import ApiStrategy_description
    from .api_strategy_preview_url import ApiStrategy_previewUrl
    from .api_strategy_stage import ApiStrategyStage
    from .api_strategy_updated_at import ApiStrategy_updatedAt
    from .strategy_visibility import StrategyVisibility

@dataclass
class ApiStrategy(Parsable):
    """
    API-safe shareable strategy.
    """
    # The createdAt property
    created_at: Optional[ApiStrategy_createdAt] = None
    # Author description, when set.
    description: Optional[ApiStrategy_description] = None
    # Game slug the strategy targets.
    game: Optional[str] = None
    # Strategy ID.
    id: Optional[str] = None
    # Built-in map slug, or the sentinel "__custom" for a custom map.
    map_id: Optional[str] = None
    # Map render orientation in degrees (0, 90, 180, or 270).
    map_rotation: Optional[float] = None
    # Strategy name.
    name: Optional[str] = None
    # Owning user ID.
    owner_id: Optional[str] = None
    # Whether frame playback wraps from the last stage to the first.
    playback_loop: Optional[bool] = None
    # Freshly signed preview image URL, when a preview has been rendered.
    preview_url: Optional[ApiStrategy_previewUrl] = None
    # Public share slug.
    share_slug: Optional[str] = None
    # The stageCount property
    stage_count: Optional[int] = None
    # The stages property
    stages: Optional[list[ApiStrategyStage]] = None
    # The updatedAt property
    updated_at: Optional[ApiStrategy_updatedAt] = None
    # Strategy share visibility setting.
    visibility: Optional[StrategyVisibility] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiStrategy:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiStrategy
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiStrategy()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_strategy_created_at import ApiStrategy_createdAt
        from .api_strategy_description import ApiStrategy_description
        from .api_strategy_preview_url import ApiStrategy_previewUrl
        from .api_strategy_stage import ApiStrategyStage
        from .api_strategy_updated_at import ApiStrategy_updatedAt
        from .strategy_visibility import StrategyVisibility

        from .api_strategy_created_at import ApiStrategy_createdAt
        from .api_strategy_description import ApiStrategy_description
        from .api_strategy_preview_url import ApiStrategy_previewUrl
        from .api_strategy_stage import ApiStrategyStage
        from .api_strategy_updated_at import ApiStrategy_updatedAt
        from .strategy_visibility import StrategyVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(ApiStrategy_createdAt)),
            "description": lambda n : setattr(self, 'description', n.get_object_value(ApiStrategy_description)),
            "game": lambda n : setattr(self, 'game', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "mapId": lambda n : setattr(self, 'map_id', n.get_str_value()),
            "mapRotation": lambda n : setattr(self, 'map_rotation', n.get_float_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "ownerId": lambda n : setattr(self, 'owner_id', n.get_str_value()),
            "playbackLoop": lambda n : setattr(self, 'playback_loop', n.get_bool_value()),
            "previewUrl": lambda n : setattr(self, 'preview_url', n.get_object_value(ApiStrategy_previewUrl)),
            "shareSlug": lambda n : setattr(self, 'share_slug', n.get_str_value()),
            "stageCount": lambda n : setattr(self, 'stage_count', n.get_int_value()),
            "stages": lambda n : setattr(self, 'stages', n.get_collection_of_object_values(ApiStrategyStage)),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_object_value(ApiStrategy_updatedAt)),
            "visibility": lambda n : setattr(self, 'visibility', n.get_enum_value(StrategyVisibility)),
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
        writer.write_object_value("createdAt", self.created_at)
        writer.write_object_value("description", self.description)
        writer.write_str_value("game", self.game)
        writer.write_str_value("id", self.id)
        writer.write_str_value("mapId", self.map_id)
        writer.write_float_value("mapRotation", self.map_rotation)
        writer.write_str_value("name", self.name)
        writer.write_str_value("ownerId", self.owner_id)
        writer.write_bool_value("playbackLoop", self.playback_loop)
        writer.write_object_value("previewUrl", self.preview_url)
        writer.write_str_value("shareSlug", self.share_slug)
        writer.write_int_value("stageCount", self.stage_count)
        writer.write_collection_of_object_values("stages", self.stages)
        writer.write_object_value("updatedAt", self.updated_at)
        writer.write_enum_value("visibility", self.visibility)
    

