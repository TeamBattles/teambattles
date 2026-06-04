from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_profile_active_seasons import LeagueProfile_activeSeasons
    from .league_profile_avatar_url import LeagueProfile_avatarUrl
    from .league_profile_banner_url import LeagueProfile_bannerUrl
    from .league_profile_games import LeagueProfile_games

@dataclass
class LeagueProfile(Parsable):
    """
    Public profile for a single league.
    """
    # Currently active seasons.
    active_seasons: Optional[list[LeagueProfile_activeSeasons]] = None
    # League avatar image URL.
    avatar_url: Optional[LeagueProfile_avatarUrl] = None
    # League banner image URL.
    banner_url: Optional[LeagueProfile_bannerUrl] = None
    # Creation timestamp (epoch milliseconds).
    created_at: Optional[float] = None
    # League description.
    description: Optional[str] = None
    # Games associated with the league.
    games: Optional[list[LeagueProfile_games]] = None
    # League ID.
    id: Optional[str] = None
    # Whether the league is featured.
    is_featured: Optional[bool] = None
    # Whether the league is verified.
    is_verified: Optional[bool] = None
    # League display name.
    name: Optional[str] = None
    # URL-friendly league identifier.
    slug: Optional[str] = None
    # Number of staff members.
    staff_count: Optional[int] = None
    # League status (e.g. active, inactive).
    status: Optional[str] = None
    # Number of teams in the league.
    team_count: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueProfile:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueProfile
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueProfile()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_profile_active_seasons import LeagueProfile_activeSeasons
        from .league_profile_avatar_url import LeagueProfile_avatarUrl
        from .league_profile_banner_url import LeagueProfile_bannerUrl
        from .league_profile_games import LeagueProfile_games

        from .league_profile_active_seasons import LeagueProfile_activeSeasons
        from .league_profile_avatar_url import LeagueProfile_avatarUrl
        from .league_profile_banner_url import LeagueProfile_bannerUrl
        from .league_profile_games import LeagueProfile_games

        fields: dict[str, Callable[[Any], None]] = {
            "activeSeasons": lambda n : setattr(self, 'active_seasons', n.get_collection_of_object_values(LeagueProfile_activeSeasons)),
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(LeagueProfile_avatarUrl)),
            "bannerUrl": lambda n : setattr(self, 'banner_url', n.get_object_value(LeagueProfile_bannerUrl)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "games": lambda n : setattr(self, 'games', n.get_collection_of_object_values(LeagueProfile_games)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isFeatured": lambda n : setattr(self, 'is_featured', n.get_bool_value()),
            "isVerified": lambda n : setattr(self, 'is_verified', n.get_bool_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "staffCount": lambda n : setattr(self, 'staff_count', n.get_int_value()),
            "status": lambda n : setattr(self, 'status', n.get_str_value()),
            "teamCount": lambda n : setattr(self, 'team_count', n.get_int_value()),
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
        writer.write_collection_of_object_values("activeSeasons", self.active_seasons)
        writer.write_object_value("avatarUrl", self.avatar_url)
        writer.write_object_value("bannerUrl", self.banner_url)
        writer.write_float_value("createdAt", self.created_at)
        writer.write_str_value("description", self.description)
        writer.write_collection_of_object_values("games", self.games)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isFeatured", self.is_featured)
        writer.write_bool_value("isVerified", self.is_verified)
        writer.write_str_value("name", self.name)
        writer.write_str_value("slug", self.slug)
        writer.write_int_value("staffCount", self.staff_count)
        writer.write_str_value("status", self.status)
        writer.write_int_value("teamCount", self.team_count)
    

