from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_rank_source import ApiGameRank_source
    from .api_game_rank_sr import ApiGameRank_sr
    from .api_game_rank_top250_rank import ApiGameRank_top250Rank

@dataclass
class ApiGameRank(Parsable):
    """
    API-safe game rank entry for the API key owner.
    """
    # When the rank was first recorded.
    created_at: Optional[str] = None
    # Game definition ID this rank belongs to.
    game_id: Optional[str] = None
    # Game rank row ID.
    id: Optional[str] = None
    # Whether the player is in the Top 250 ladder.
    is_top250: Optional[bool] = None
    # Game mode / playlist the rank is tracked for.
    mode: Optional[str] = None
    # Origin of the rank: manual entry or an API push.
    source: Optional[ApiGameRank_source] = None
    # Skill rating, when set.
    sr: Optional[ApiGameRank_sr] = None
    # Top 250 ladder position (1-250), when applicable.
    top250_rank: Optional[ApiGameRank_top250Rank] = None
    # When the rank was last updated.
    updated_at: Optional[str] = None
    # Current win streak count.
    winstreak: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameRank:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameRank
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGameRank()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_rank_source import ApiGameRank_source
        from .api_game_rank_sr import ApiGameRank_sr
        from .api_game_rank_top250_rank import ApiGameRank_top250Rank

        from .api_game_rank_source import ApiGameRank_source
        from .api_game_rank_sr import ApiGameRank_sr
        from .api_game_rank_top250_rank import ApiGameRank_top250Rank

        fields: dict[str, Callable[[Any], None]] = {
            "createdAt": lambda n : setattr(self, 'created_at', n.get_str_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isTop250": lambda n : setattr(self, 'is_top250', n.get_bool_value()),
            "mode": lambda n : setattr(self, 'mode', n.get_str_value()),
            "source": lambda n : setattr(self, 'source', n.get_enum_value(ApiGameRank_source)),
            "sr": lambda n : setattr(self, 'sr', n.get_object_value(ApiGameRank_sr)),
            "top250Rank": lambda n : setattr(self, 'top250_rank', n.get_object_value(ApiGameRank_top250Rank)),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_str_value()),
            "winstreak": lambda n : setattr(self, 'winstreak', n.get_int_value()),
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
        writer.write_str_value("createdAt", self.created_at)
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isTop250", self.is_top250)
        writer.write_str_value("mode", self.mode)
        writer.write_enum_value("source", self.source)
        writer.write_object_value("sr", self.sr)
        writer.write_object_value("top250Rank", self.top250_rank)
        writer.write_str_value("updatedAt", self.updated_at)
        writer.write_int_value("winstreak", self.winstreak)
    

