from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_user_organization_membership_avatar_url import ApiUserOrganizationMembership_avatarUrl
    from .api_user_organization_membership_joined_at import ApiUserOrganizationMembership_joinedAt
    from .api_user_organization_membership_slug import ApiUserOrganizationMembership_slug
    from .api_user_organization_membership_tag import ApiUserOrganizationMembership_tag
    from .profile_visibility import ProfileVisibility

@dataclass
class ApiUserOrganizationMembership(Parsable):
    """
    API-safe organization affiliation row on a user profile.
    """
    # The avatarUrl property
    avatar_url: Optional[ApiUserOrganizationMembership_avatarUrl] = None
    # Organization ID.
    id: Optional[str] = None
    # The joinedAt property
    joined_at: Optional[ApiUserOrganizationMembership_joinedAt] = None
    # Organization name.
    name: Optional[str] = None
    # The role property
    role: Optional[str] = None
    # The slug property
    slug: Optional[ApiUserOrganizationMembership_slug] = None
    # The tag property
    tag: Optional[ApiUserOrganizationMembership_tag] = None
    # Public profile visibility setting.
    visibility: Optional[ProfileVisibility] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiUserOrganizationMembership:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiUserOrganizationMembership
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiUserOrganizationMembership()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_user_organization_membership_avatar_url import ApiUserOrganizationMembership_avatarUrl
        from .api_user_organization_membership_joined_at import ApiUserOrganizationMembership_joinedAt
        from .api_user_organization_membership_slug import ApiUserOrganizationMembership_slug
        from .api_user_organization_membership_tag import ApiUserOrganizationMembership_tag
        from .profile_visibility import ProfileVisibility

        from .api_user_organization_membership_avatar_url import ApiUserOrganizationMembership_avatarUrl
        from .api_user_organization_membership_joined_at import ApiUserOrganizationMembership_joinedAt
        from .api_user_organization_membership_slug import ApiUserOrganizationMembership_slug
        from .api_user_organization_membership_tag import ApiUserOrganizationMembership_tag
        from .profile_visibility import ProfileVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiUserOrganizationMembership_avatarUrl)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "joinedAt": lambda n : setattr(self, 'joined_at', n.get_object_value(ApiUserOrganizationMembership_joinedAt)),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "role": lambda n : setattr(self, 'role', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_object_value(ApiUserOrganizationMembership_slug)),
            "tag": lambda n : setattr(self, 'tag', n.get_object_value(ApiUserOrganizationMembership_tag)),
            "visibility": lambda n : setattr(self, 'visibility', n.get_enum_value(ProfileVisibility)),
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
        writer.write_object_value("avatarUrl", self.avatar_url)
        writer.write_str_value("id", self.id)
        writer.write_object_value("joinedAt", self.joined_at)
        writer.write_str_value("name", self.name)
        writer.write_str_value("role", self.role)
        writer.write_object_value("slug", self.slug)
        writer.write_object_value("tag", self.tag)
        writer.write_enum_value("visibility", self.visibility)
