from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_branding_socials import LeagueBrandingSocials

@dataclass
class UpdateLeagueBrandingRequestBody(AdditionalDataHolder, Parsable):
    """
    Updates league profile branding and public metadata.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Convex storage ID for the league avatar.
    avatar_storage_id: Optional[str] = None
    # Convex storage ID for the league banner.
    banner_storage_id: Optional[str] = None
    # The description property
    description: Optional[str] = None
    # The name property
    name: Optional[str] = None
    # The profileThemeId property
    profile_theme_id: Optional[str] = None
    # The socials property
    socials: Optional[LeagueBrandingSocials] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateLeagueBrandingRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateLeagueBrandingRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateLeagueBrandingRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_branding_socials import LeagueBrandingSocials

        from .league_branding_socials import LeagueBrandingSocials

        fields: dict[str, Callable[[Any], None]] = {
            "avatarStorageId": lambda n : setattr(self, 'avatar_storage_id', n.get_str_value()),
            "bannerStorageId": lambda n : setattr(self, 'banner_storage_id', n.get_str_value()),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "profileThemeId": lambda n : setattr(self, 'profile_theme_id', n.get_str_value()),
            "socials": lambda n : setattr(self, 'socials', n.get_object_value(LeagueBrandingSocials)),
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
        writer.write_str_value("avatarStorageId", self.avatar_storage_id)
        writer.write_str_value("bannerStorageId", self.banner_storage_id)
        writer.write_str_value("description", self.description)
        writer.write_str_value("name", self.name)
        writer.write_str_value("profileThemeId", self.profile_theme_id)
        writer.write_object_value("socials", self.socials)
        writer.write_additional_data_value(self.additional_data)
    

