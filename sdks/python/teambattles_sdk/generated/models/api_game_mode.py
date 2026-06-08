from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_mode_description_key import ApiGameMode_descriptionKey
    from .api_game_mode_image import ApiGameMode_image
    from .api_game_mode_reward_bonus import ApiGameMode_rewardBonus
    from .api_game_mode_short_name import ApiGameMode_shortName

@dataclass
class ApiGameMode(Parsable):
    """
    Static game mode definition.
    """
    # The descriptionKey property
    description_key: Optional[ApiGameMode_descriptionKey] = None
    # The id property
    id: Optional[str] = None
    # The image property
    image: Optional[ApiGameMode_image] = None
    # The mapIds property
    map_ids: Optional[list[str]] = None
    # The nameKey property
    name_key: Optional[str] = None
    # The rewardBonus property
    reward_bonus: Optional[ApiGameMode_rewardBonus] = None
    # The shortName property
    short_name: Optional[ApiGameMode_shortName] = None
    # The supportsDraftToggle property
    supports_draft_toggle: Optional[bool] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameMode:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameMode
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGameMode()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_mode_description_key import ApiGameMode_descriptionKey
        from .api_game_mode_image import ApiGameMode_image
        from .api_game_mode_reward_bonus import ApiGameMode_rewardBonus
        from .api_game_mode_short_name import ApiGameMode_shortName

        from .api_game_mode_description_key import ApiGameMode_descriptionKey
        from .api_game_mode_image import ApiGameMode_image
        from .api_game_mode_reward_bonus import ApiGameMode_rewardBonus
        from .api_game_mode_short_name import ApiGameMode_shortName

        fields: dict[str, Callable[[Any], None]] = {
            "descriptionKey": lambda n : setattr(self, 'description_key', n.get_object_value(ApiGameMode_descriptionKey)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "image": lambda n : setattr(self, 'image', n.get_object_value(ApiGameMode_image)),
            "mapIds": lambda n : setattr(self, 'map_ids', n.get_collection_of_primitive_values(str)),
            "nameKey": lambda n : setattr(self, 'name_key', n.get_str_value()),
            "rewardBonus": lambda n : setattr(self, 'reward_bonus', n.get_object_value(ApiGameMode_rewardBonus)),
            "shortName": lambda n : setattr(self, 'short_name', n.get_object_value(ApiGameMode_shortName)),
            "supportsDraftToggle": lambda n : setattr(self, 'supports_draft_toggle', n.get_bool_value()),
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
        writer.write_object_value("descriptionKey", self.description_key)
        writer.write_str_value("id", self.id)
        writer.write_object_value("image", self.image)
        writer.write_collection_of_primitive_values("mapIds", self.map_ids)
        writer.write_str_value("nameKey", self.name_key)
        writer.write_object_value("rewardBonus", self.reward_bonus)
        writer.write_object_value("shortName", self.short_name)
        writer.write_bool_value("supportsDraftToggle", self.supports_draft_toggle)
    

