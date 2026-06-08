from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_team_summary import ApiTeamSummary
    from .leaderboard_stats import LeaderboardStats
    from .team_leaderboard_entry_game_slug import TeamLeaderboardEntry_gameSlug

@dataclass
class TeamLeaderboardEntry(Parsable):
    """
    Team leaderboard row.
    """
    # The gameSlug property
    game_slug: Optional[TeamLeaderboardEntry_gameSlug] = None
    # Team ID.
    id: Optional[str] = None
    # The rank property
    rank: Optional[int] = None
    # Aggregate stats used for leaderboard ranking.
    stats: Optional[LeaderboardStats] = None
    # Small API-safe team summary.
    team: Optional[ApiTeamSummary] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TeamLeaderboardEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TeamLeaderboardEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TeamLeaderboardEntry()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_team_summary import ApiTeamSummary
        from .leaderboard_stats import LeaderboardStats
        from .team_leaderboard_entry_game_slug import TeamLeaderboardEntry_gameSlug

        from .api_team_summary import ApiTeamSummary
        from .leaderboard_stats import LeaderboardStats
        from .team_leaderboard_entry_game_slug import TeamLeaderboardEntry_gameSlug

        fields: dict[str, Callable[[Any], None]] = {
            "gameSlug": lambda n : setattr(self, 'game_slug', n.get_object_value(TeamLeaderboardEntry_gameSlug)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "rank": lambda n : setattr(self, 'rank', n.get_int_value()),
            "stats": lambda n : setattr(self, 'stats', n.get_object_value(LeaderboardStats)),
            "team": lambda n : setattr(self, 'team', n.get_object_value(ApiTeamSummary)),
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
        writer.write_object_value("gameSlug", self.game_slug)
        writer.write_str_value("id", self.id)
        writer.write_int_value("rank", self.rank)
        writer.write_object_value("stats", self.stats)
        writer.write_object_value("team", self.team)
    

