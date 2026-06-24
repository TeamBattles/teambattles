from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .update_org_body_profile_visibility import UpdateOrgBody_profileVisibility

@dataclass
class UpdateOrgBody(AdditionalDataHolder, Parsable):
    """
    Fields to update on the organization. All optional.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The description property
    description: Optional[str] = None
    # The isPublic property
    is_public: Optional[bool] = None
    # The name property
    name: Optional[str] = None
    # The profileVisibility property
    profile_visibility: Optional[UpdateOrgBody_profileVisibility] = None
    # The tag property
    tag: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateOrgBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateOrgBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateOrgBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .update_org_body_profile_visibility import UpdateOrgBody_profileVisibility

        from .update_org_body_profile_visibility import UpdateOrgBody_profileVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "isPublic": lambda n : setattr(self, 'is_public', n.get_bool_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "profileVisibility": lambda n : setattr(self, 'profile_visibility', n.get_enum_value(UpdateOrgBody_profileVisibility)),
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
        writer.write_bool_value("isPublic", self.is_public)
        writer.write_str_value("name", self.name)
        writer.write_enum_value("profileVisibility", self.profile_visibility)
        writer.write_str_value("tag", self.tag)
        writer.write_additional_data_value(self.additional_data)
    

