from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_organization_profile_avatar_url import ApiOrganizationProfile_avatarUrl
    from .api_organization_profile_banner_url import ApiOrganizationProfile_bannerUrl
    from .api_organization_profile_created_at import ApiOrganizationProfile_createdAt
    from .api_organization_profile_description import ApiOrganizationProfile_description
    from .api_organization_profile_slug import ApiOrganizationProfile_slug
    from .api_organization_profile_tag import ApiOrganizationProfile_tag
    from .profile_visibility import ProfileVisibility

@dataclass
class ApiOrganizationProfile(Parsable):
    """
    API-safe organization profile.
    """
    # The avatarUrl property
    avatar_url: Optional[ApiOrganizationProfile_avatarUrl] = None
    # The bannerUrl property
    banner_url: Optional[ApiOrganizationProfile_bannerUrl] = None
    # The createdAt property
    created_at: Optional[ApiOrganizationProfile_createdAt] = None
    # The description property
    description: Optional[ApiOrganizationProfile_description] = None
    # The draws property
    draws: Optional[int] = None
    # Organization ID.
    id: Optional[str] = None
    # The isMember property
    is_member: Optional[bool] = None
    # The isVerified property
    is_verified: Optional[bool] = None
    # The losses property
    losses: Optional[int] = None
    # The matchesPlayed property
    matches_played: Optional[int] = None
    # The memberCount property
    member_count: Optional[int] = None
    # Organization name.
    name: Optional[str] = None
    # The slug property
    slug: Optional[ApiOrganizationProfile_slug] = None
    # The tag property
    tag: Optional[ApiOrganizationProfile_tag] = None
    # The teamCount property
    team_count: Optional[int] = None
    # Public profile visibility setting.
    visibility: Optional[ProfileVisibility] = None
    # The wins property
    wins: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiOrganizationProfile:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiOrganizationProfile
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiOrganizationProfile()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_organization_profile_avatar_url import ApiOrganizationProfile_avatarUrl
        from .api_organization_profile_banner_url import ApiOrganizationProfile_bannerUrl
        from .api_organization_profile_created_at import ApiOrganizationProfile_createdAt
        from .api_organization_profile_description import ApiOrganizationProfile_description
        from .api_organization_profile_slug import ApiOrganizationProfile_slug
        from .api_organization_profile_tag import ApiOrganizationProfile_tag
        from .profile_visibility import ProfileVisibility

        from .api_organization_profile_avatar_url import ApiOrganizationProfile_avatarUrl
        from .api_organization_profile_banner_url import ApiOrganizationProfile_bannerUrl
        from .api_organization_profile_created_at import ApiOrganizationProfile_createdAt
        from .api_organization_profile_description import ApiOrganizationProfile_description
        from .api_organization_profile_slug import ApiOrganizationProfile_slug
        from .api_organization_profile_tag import ApiOrganizationProfile_tag
        from .profile_visibility import ProfileVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiOrganizationProfile_avatarUrl)),
            "bannerUrl": lambda n : setattr(self, 'banner_url', n.get_object_value(ApiOrganizationProfile_bannerUrl)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(ApiOrganizationProfile_createdAt)),
            "description": lambda n : setattr(self, 'description', n.get_object_value(ApiOrganizationProfile_description)),
            "draws": lambda n : setattr(self, 'draws', n.get_int_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isMember": lambda n : setattr(self, 'is_member', n.get_bool_value()),
            "isVerified": lambda n : setattr(self, 'is_verified', n.get_bool_value()),
            "losses": lambda n : setattr(self, 'losses', n.get_int_value()),
            "matchesPlayed": lambda n : setattr(self, 'matches_played', n.get_int_value()),
            "memberCount": lambda n : setattr(self, 'member_count', n.get_int_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_object_value(ApiOrganizationProfile_slug)),
            "tag": lambda n : setattr(self, 'tag', n.get_object_value(ApiOrganizationProfile_tag)),
            "teamCount": lambda n : setattr(self, 'team_count', n.get_int_value()),
            "visibility": lambda n : setattr(self, 'visibility', n.get_enum_value(ProfileVisibility)),
            "wins": lambda n : setattr(self, 'wins', n.get_int_value()),
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
        writer.write_object_value("bannerUrl", self.banner_url)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_object_value("description", self.description)
        writer.write_int_value("draws", self.draws)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isMember", self.is_member)
        writer.write_bool_value("isVerified", self.is_verified)
        writer.write_int_value("losses", self.losses)
        writer.write_int_value("matchesPlayed", self.matches_played)
        writer.write_int_value("memberCount", self.member_count)
        writer.write_str_value("name", self.name)
        writer.write_object_value("slug", self.slug)
        writer.write_object_value("tag", self.tag)
        writer.write_int_value("teamCount", self.team_count)
        writer.write_enum_value("visibility", self.visibility)
        writer.write_int_value("wins", self.wins)
    

