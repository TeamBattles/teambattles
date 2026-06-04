from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_map_score_input_player_stats import GameMapScoreInput_playerStats

@dataclass
class GameMapScoreInput(AdditionalDataHolder, Parsable):
    """
    One map's score within a batch submission.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Score for the creator team (non-negative).
    creator_team_score: Optional[float] = None
    # Identifier of the map that was played.
    map_id: Optional[str] = None
    # Zero-based index of the map within the series.
    map_index: Optional[int] = None
    # Score for the opponent (accepted) team (non-negative).
    opponent_team_score: Optional[float] = None
    # Optional per-player stats keyed by user ID.
    player_stats: Optional[GameMapScoreInput_playerStats] = None
    # Optional screenshot URLs supporting the reported score.
    screenshot_urls: Optional[list[str]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameMapScoreInput:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameMapScoreInput
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameMapScoreInput()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_map_score_input_player_stats import GameMapScoreInput_playerStats

        from .game_map_score_input_player_stats import GameMapScoreInput_playerStats

        fields: dict[str, Callable[[Any], None]] = {
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_float_value()),
            "mapId": lambda n : setattr(self, 'map_id', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "opponentTeamScore": lambda n : setattr(self, 'opponent_team_score', n.get_float_value()),
            "playerStats": lambda n : setattr(self, 'player_stats', n.get_object_value(GameMapScoreInput_playerStats)),
            "screenshotUrls": lambda n : setattr(self, 'screenshot_urls', n.get_collection_of_primitive_values(str)),
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
        writer.write_float_value("creatorTeamScore", self.creator_team_score)
        writer.write_str_value("mapId", self.map_id)
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_float_value("opponentTeamScore", self.opponent_team_score)
        writer.write_object_value("playerStats", self.player_stats)
        writer.write_collection_of_primitive_values("screenshotUrls", self.screenshot_urls)
        writer.write_additional_data_value(self.additional_data)
    

