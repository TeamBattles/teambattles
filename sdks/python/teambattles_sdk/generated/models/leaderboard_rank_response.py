from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .leaderboard_rank_response_game_slug import LeaderboardRankResponse_gameSlug
    from .leaderboard_rank_response_rank import LeaderboardRankResponse_rank
    from .leaderboard_sort_by import LeaderboardSortBy

@dataclass
class LeaderboardRankResponse(Parsable):
    """
    Leaderboard rank lookup response.
    """
    # The gameSlug property
    game_slug: Optional[LeaderboardRankResponse_gameSlug] = None
    # Resolved entity ID.
    id: Optional[str] = None
    # The rank property
    rank: Optional[LeaderboardRankResponse_rank] = None
    # Supported leaderboard sort field.
    sort_by: Optional[LeaderboardSortBy] = None
    # The timestamp property
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeaderboardRankResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeaderboardRankResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeaderboardRankResponse()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .leaderboard_rank_response_game_slug import LeaderboardRankResponse_gameSlug
        from .leaderboard_rank_response_rank import LeaderboardRankResponse_rank
        from .leaderboard_sort_by import LeaderboardSortBy

        from .leaderboard_rank_response_game_slug import LeaderboardRankResponse_gameSlug
        from .leaderboard_rank_response_rank import LeaderboardRankResponse_rank
        from .leaderboard_sort_by import LeaderboardSortBy

        fields: dict[str, Callable[[Any], None]] = {
            "gameSlug": lambda n : setattr(self, 'game_slug', n.get_object_value(LeaderboardRankResponse_gameSlug)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "rank": lambda n : setattr(self, 'rank', n.get_object_value(LeaderboardRankResponse_rank)),
            "sortBy": lambda n : setattr(self, 'sort_by', n.get_enum_value(LeaderboardSortBy)),
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
        writer.write_str_value("id", self.id)
        writer.write_object_value("rank", self.rank)
        writer.write_enum_value("sortBy", self.sort_by)
        writer.write_str_value("timestamp", self.timestamp)
