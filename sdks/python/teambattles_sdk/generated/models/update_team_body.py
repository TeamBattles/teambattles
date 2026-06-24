from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .update_team_body_profile_visibility import UpdateTeamBody_profileVisibility
    from .update_team_body_region import UpdateTeamBody_region

@dataclass
class UpdateTeamBody(AdditionalDataHolder, Parsable):
    """
    Fields to update on the team. All optional.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The description property
    description: Optional[str] = None
    # The name property
    name: Optional[str] = None
    # The platform property
    platform: Optional[str] = None
    # The profileVisibility property
    profile_visibility: Optional[UpdateTeamBody_profileVisibility] = None
    # The region property
    region: Optional[UpdateTeamBody_region] = None
    # The tag property
    tag: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateTeamBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateTeamBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateTeamBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .update_team_body_profile_visibility import UpdateTeamBody_profileVisibility
        from .update_team_body_region import UpdateTeamBody_region

        from .update_team_body_profile_visibility import UpdateTeamBody_profileVisibility
        from .update_team_body_region import UpdateTeamBody_region

        fields: dict[str, Callable[[Any], None]] = {
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "platform": lambda n : setattr(self, 'platform', n.get_str_value()),
            "profileVisibility": lambda n : setattr(self, 'profile_visibility', n.get_enum_value(UpdateTeamBody_profileVisibility)),
            "region": lambda n : setattr(self, 'region', n.get_enum_value(UpdateTeamBody_region)),
            "tag": lambda n : setattr(self, 'tag', n.get_str_value()),
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
        writer.write_str_value("description", self.description)
        writer.write_str_value("name", self.name)
        writer.write_str_value("platform", self.platform)
        writer.write_enum_value("profileVisibility", self.profile_visibility)
        writer.write_enum_value("region", self.region)
        writer.write_str_value("tag", self.tag)
        writer.write_additional_data_value(self.additional_data)
    

