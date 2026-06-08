from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .leaderboard_sort_by import LeaderboardSortBy
    from .team_leaderboard_entry import TeamLeaderboardEntry
    from .team_leaderboard_response_game_slug import TeamLeaderboardResponse_gameSlug

@dataclass
class TeamLeaderboardResponse(Parsable):
    """
    Team leaderboard response.
    """
    # The gameSlug property
    game_slug: Optional[TeamLeaderboardResponse_gameSlug] = None
    # Supported leaderboard sort field.
    sort_by: Optional[LeaderboardSortBy] = None
    # The teams property
    teams: Optional[list[TeamLeaderboardEntry]] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TeamLeaderboardResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TeamLeaderboardResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TeamLeaderboardResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .leaderboard_sort_by import LeaderboardSortBy
        from .team_leaderboard_entry import TeamLeaderboardEntry
        from .team_leaderboard_response_game_slug import TeamLeaderboardResponse_gameSlug

        from .leaderboard_sort_by import LeaderboardSortBy
        from .team_leaderboard_entry import TeamLeaderboardEntry
        from .team_leaderboard_response_game_slug import TeamLeaderboardResponse_gameSlug

        fields: dict[str, Callable[[Any], None]] = {
            "gameSlug": lambda n : setattr(self, 'game_slug', n.get_object_value(TeamLeaderboardResponse_gameSlug)),
            "sortBy": lambda n : setattr(self, 'sort_by', n.get_enum_value(LeaderboardSortBy)),
            "teams": lambda n : setattr(self, 'teams', n.get_collection_of_object_values(TeamLeaderboardEntry)),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
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
        writer.write_enum_value("sortBy", self.sort_by)
        writer.write_collection_of_object_values("teams", self.teams)
        writer.write_str_value("timestamp", self.timestamp)
    

