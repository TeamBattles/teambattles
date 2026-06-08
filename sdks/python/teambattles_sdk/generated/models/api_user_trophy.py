from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_user_trophy_awarded_at import ApiUserTrophy_awardedAt
    from .api_user_trophy_description import ApiUserTrophy_description
    from .api_user_trophy_icon_url import ApiUserTrophy_iconUrl
    from .api_user_trophy_rarity import ApiUserTrophy_rarity
    from .api_user_trophy_title import ApiUserTrophy_title

@dataclass
class ApiUserTrophy(Parsable):
    """
    API-safe user trophy. Event linkage fields are intentionally omitted.
    """
    # The awardedAt property
    awarded_at: Optional[ApiUserTrophy_awardedAt] = None
    # The description property
    description: Optional[ApiUserTrophy_description] = None
    # The iconUrl property
    icon_url: Optional[ApiUserTrophy_iconUrl] = None
    # Trophy award ID.
    id: Optional[str] = None
    # The rarity property
    rarity: Optional[ApiUserTrophy_rarity] = None
    # The title property
    title: Optional[ApiUserTrophy_title] = None
    # Trophy definition ID.
    trophy_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiUserTrophy:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiUserTrophy
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiUserTrophy()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_user_trophy_awarded_at import ApiUserTrophy_awardedAt
        from .api_user_trophy_description import ApiUserTrophy_description
        from .api_user_trophy_icon_url import ApiUserTrophy_iconUrl
        from .api_user_trophy_rarity import ApiUserTrophy_rarity
        from .api_user_trophy_title import ApiUserTrophy_title

        from .api_user_trophy_awarded_at import ApiUserTrophy_awardedAt
        from .api_user_trophy_description import ApiUserTrophy_description
        from .api_user_trophy_icon_url import ApiUserTrophy_iconUrl
        from .api_user_trophy_rarity import ApiUserTrophy_rarity
        from .api_user_trophy_title import ApiUserTrophy_title

        fields: dict[str, Callable[[Any], None]] = {
            "awardedAt": lambda n : setattr(self, 'awarded_at', n.get_object_value(ApiUserTrophy_awardedAt)),
            "description": lambda n : setattr(self, 'description', n.get_object_value(ApiUserTrophy_description)),
            "iconUrl": lambda n : setattr(self, 'icon_url', n.get_object_value(ApiUserTrophy_iconUrl)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "rarity": lambda n : setattr(self, 'rarity', n.get_object_value(ApiUserTrophy_rarity)),
            "title": lambda n : setattr(self, 'title', n.get_object_value(ApiUserTrophy_title)),
            "trophyId": lambda n : setattr(self, 'trophy_id', n.get_str_value()),
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
        writer.write_object_value("awardedAt", self.awarded_at)
        writer.write_object_value("description", self.description)
        writer.write_object_value("iconUrl", self.icon_url)
        writer.write_str_value("id", self.id)
        writer.write_object_value("rarity", self.rarity)
        writer.write_object_value("title", self.title)
        writer.write_str_value("trophyId", self.trophy_id)
    

