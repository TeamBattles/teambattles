from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .leaderboard_sort_by import LeaderboardSortBy
    from .player_leaderboard_entry import PlayerLeaderboardEntry

@dataclass
class PlayerLeaderboardResponse(Parsable):
    """
    Player leaderboard response.
    """
    # The players property
    players: Optional[list[PlayerLeaderboardEntry]] = None
    # Supported leaderboard sort field.
    sort_by: Optional[LeaderboardSortBy] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> PlayerLeaderboardResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: PlayerLeaderboardResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return PlayerLeaderboardResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .leaderboard_sort_by import LeaderboardSortBy
        from .player_leaderboard_entry import PlayerLeaderboardEntry

        from .leaderboard_sort_by import LeaderboardSortBy
        from .player_leaderboard_entry import PlayerLeaderboardEntry

        fields: dict[str, Callable[[Any], None]] = {
            "players": lambda n : setattr(self, 'players', n.get_collection_of_object_values(PlayerLeaderboardEntry)),
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
        writer.write_collection_of_object_values("players", self.players)
        writer.write_enum_value("sortBy", self.sort_by)
        writer.write_str_value("timestamp", self.timestamp)
    

