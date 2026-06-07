from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_organization_summary_avatar_url import ApiOrganizationSummary_avatarUrl
    from .api_organization_summary_slug import ApiOrganizationSummary_slug
    from .api_organization_summary_tag import ApiOrganizationSummary_tag
    from .profile_visibility import ProfileVisibility

@dataclass
class ApiOrganizationSummary(Parsable):
    """
    Small API-safe organization summary.
    """
    # The avatarUrl property
    avatar_url: Optional[ApiOrganizationSummary_avatarUrl] = None
    # Organization ID.
    id: Optional[str] = None
    # Organization name.
    name: Optional[str] = None
    # The slug property
    slug: Optional[ApiOrganizationSummary_slug] = None
    # The tag property
    tag: Optional[ApiOrganizationSummary_tag] = None
    # Public profile visibility setting.
    visibility: Optional[ProfileVisibility] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiOrganizationSummary:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiOrganizationSummary
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiOrganizationSummary()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_organization_summary_avatar_url import ApiOrganizationSummary_avatarUrl
        from .api_organization_summary_slug import ApiOrganizationSummary_slug
        from .api_organization_summary_tag import ApiOrganizationSummary_tag
        from .profile_visibility import ProfileVisibility

        from .api_organization_summary_avatar_url import ApiOrganizationSummary_avatarUrl
        from .api_organization_summary_slug import ApiOrganizationSummary_slug
        from .api_organization_summary_tag import ApiOrganizationSummary_tag
        from .profile_visibility import ProfileVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiOrganizationSummary_avatarUrl)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_object_value(ApiOrganizationSummary_slug)),
            "tag": lambda n : setattr(self, 'tag', n.get_object_value(ApiOrganizationSummary_tag)),
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
        writer.write_str_value("name", self.name)
        writer.write_object_value("slug", self.slug)
        writer.write_object_value("tag", self.tag)
        writer.write_enum_value("visibility", self.visibility)
