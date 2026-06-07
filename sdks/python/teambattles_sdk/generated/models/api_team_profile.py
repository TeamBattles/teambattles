from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_team_profile_avatar_url import ApiTeamProfile_avatarUrl
    from .api_team_profile_banner_url import ApiTeamProfile_bannerUrl
    from .api_team_profile_created_at import ApiTeamProfile_createdAt
    from .api_team_profile_description import ApiTeamProfile_description
    from .api_team_profile_game_id import ApiTeamProfile_gameId
    from .api_team_profile_organization_id import ApiTeamProfile_organizationId
    from .api_team_profile_slug import ApiTeamProfile_slug
    from .api_team_profile_tag import ApiTeamProfile_tag
    from .profile_visibility import ProfileVisibility

@dataclass
class ApiTeamProfile(Parsable):
    """
    API-safe team profile.
    """
    # The avatarUrl property
    avatar_url: Optional[ApiTeamProfile_avatarUrl] = None
    # The bannerUrl property
    banner_url: Optional[ApiTeamProfile_bannerUrl] = None
    # The createdAt property
    created_at: Optional[ApiTeamProfile_createdAt] = None
    # The description property
    description: Optional[ApiTeamProfile_description] = None
    # The draws property
    draws: Optional[int] = None
    # The experience property
    experience: Optional[float] = None
    # The gameId property
    game_id: Optional[ApiTeamProfile_gameId] = None
    # Team ID.
    id: Optional[str] = None
    # The isMember property
    is_member: Optional[bool] = None
    # The losses property
    losses: Optional[int] = None
    # The matchesPlayed property
    matches_played: Optional[int] = None
    # The memberCount property
    member_count: Optional[int] = None
    # Team name.
    name: Optional[str] = None
    # The organizationId property
    organization_id: Optional[ApiTeamProfile_organizationId] = None
    # The slug property
    slug: Optional[ApiTeamProfile_slug] = None
    # The tag property
    tag: Optional[ApiTeamProfile_tag] = None
    # Public profile visibility setting.
    visibility: Optional[ProfileVisibility] = None
    # The wins property
    wins: Optional[int] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiTeamProfile:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiTeamProfile
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiTeamProfile()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_team_profile_avatar_url import ApiTeamProfile_avatarUrl
        from .api_team_profile_banner_url import ApiTeamProfile_bannerUrl
        from .api_team_profile_created_at import ApiTeamProfile_createdAt
        from .api_team_profile_description import ApiTeamProfile_description
        from .api_team_profile_game_id import ApiTeamProfile_gameId
        from .api_team_profile_organization_id import ApiTeamProfile_organizationId
        from .api_team_profile_slug import ApiTeamProfile_slug
        from .api_team_profile_tag import ApiTeamProfile_tag
        from .profile_visibility import ProfileVisibility

        from .api_team_profile_avatar_url import ApiTeamProfile_avatarUrl
        from .api_team_profile_banner_url import ApiTeamProfile_bannerUrl
        from .api_team_profile_created_at import ApiTeamProfile_createdAt
        from .api_team_profile_description import ApiTeamProfile_description
        from .api_team_profile_game_id import ApiTeamProfile_gameId
        from .api_team_profile_organization_id import ApiTeamProfile_organizationId
        from .api_team_profile_slug import ApiTeamProfile_slug
        from .api_team_profile_tag import ApiTeamProfile_tag
        from .profile_visibility import ProfileVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiTeamProfile_avatarUrl)),
            "bannerUrl": lambda n : setattr(self, 'banner_url', n.get_object_value(ApiTeamProfile_bannerUrl)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(ApiTeamProfile_createdAt)),
            "description": lambda n : setattr(self, 'description', n.get_object_value(ApiTeamProfile_description)),
            "draws": lambda n : setattr(self, 'draws', n.get_int_value()),
            "experience": lambda n : setattr(self, 'experience', n.get_float_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_object_value(ApiTeamProfile_gameId)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isMember": lambda n : setattr(self, 'is_member', n.get_bool_value()),
            "losses": lambda n : setattr(self, 'losses', n.get_int_value()),
            "matchesPlayed": lambda n : setattr(self, 'matches_played', n.get_int_value()),
            "memberCount": lambda n : setattr(self, 'member_count', n.get_int_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "organizationId": lambda n : setattr(self, 'organization_id', n.get_object_value(ApiTeamProfile_organizationId)),
            "slug": lambda n : setattr(self, 'slug', n.get_object_value(ApiTeamProfile_slug)),
            "tag": lambda n : setattr(self, 'tag', n.get_object_value(ApiTeamProfile_tag)),
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
        writer.write_float_value("experience", self.experience)
        writer.write_object_value("gameId", self.game_id)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isMember", self.is_member)
        writer.write_int_value("losses", self.losses)
        writer.write_int_value("matchesPlayed", self.matches_played)
        writer.write_int_value("memberCount", self.member_count)
        writer.write_str_value("name", self.name)
        writer.write_object_value("organizationId", self.organization_id)
        writer.write_object_value("slug", self.slug)
        writer.write_object_value("tag", self.tag)
        writer.write_enum_value("visibility", self.visibility)
        writer.write_int_value("wins", self.wins)
