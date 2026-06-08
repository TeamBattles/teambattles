from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_rank_upsert_body_game_id import GameRankUpsertBody_gameId

@dataclass
class GameRankUpsertBody(AdditionalDataHolder, Parsable):
    """
    Upsert the API key owner's rank for one (gameId, mode) slot.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Game definition ID to set the rank for (a playable game).
    game_id: Optional[GameRankUpsertBody_gameId] = None
    # Whether the player is in the Top 250 ladder.
    is_top250: Optional[bool] = None
    # Game mode / playlist the rank applies to (a valid playlist ID).
    mode: Optional[str] = None
    # Skill rating (integer, 0-100000).
    sr: Optional[int] = None
    # Top 250 ladder position (1-250); only meaningful when isTop250.
    top250_rank: Optional[int] = None
    # Current win streak count (0-99).
    winstreak: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameRankUpsertBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameRankUpsertBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameRankUpsertBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_rank_upsert_body_game_id import GameRankUpsertBody_gameId

        from .game_rank_upsert_body_game_id import GameRankUpsertBody_gameId

        fields: dict[str, Callable[[Any], None]] = {
            "gameId": lambda n : setattr(self, 'game_id', n.get_enum_value(GameRankUpsertBody_gameId)),
            "isTop250": lambda n : setattr(self, 'is_top250', n.get_bool_value()),
            "mode": lambda n : setattr(self, 'mode', n.get_str_value()),
            "sr": lambda n : setattr(self, 'sr', n.get_int_value()),
            "top250Rank": lambda n : setattr(self, 'top250_rank', n.get_int_value()),
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
        writer.write_enum_value("gameId", self.game_id)
        writer.write_bool_value("isTop250", self.is_top250)
        writer.write_str_value("mode", self.mode)
        writer.write_int_value("sr", self.sr)
        writer.write_int_value("top250Rank", self.top250_rank)
        writer.write_int_value("winstreak", self.winstreak)
        writer.write_additional_data_value(self.additional_data)
    

