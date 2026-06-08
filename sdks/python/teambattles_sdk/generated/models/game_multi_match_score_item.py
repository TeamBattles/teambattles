from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_multi_match_score_item_player_stats import GameMultiMatchScoreItem_playerStats

@dataclass
class GameMultiMatchScoreItem(AdditionalDataHolder, Parsable):
    """
    One match's single map score within a multi-match batch submission.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Score for the creator team (integer, 0-1000).
    creator_team_score: Optional[int] = None
    # Identifier of the map that was played.
    map_id: Optional[str] = None
    # Zero-based index of the map within the series.
    map_index: Optional[int] = None
    # ID of the match this map score belongs to.
    match_id: Optional[str] = None
    # Score for the opponent (accepted) team (integer, 0-1000).
    opponent_team_score: Optional[int] = None
    # Optional per-player stats keyed by user ID.
    player_stats: Optional[GameMultiMatchScoreItem_playerStats] = None
    # Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
    screenshot_storage_ids: Optional[list[str]] = None
    # Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
    screenshot_urls: Optional[list[str]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameMultiMatchScoreItem:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameMultiMatchScoreItem
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameMultiMatchScoreItem()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_multi_match_score_item_player_stats import GameMultiMatchScoreItem_playerStats

        from .game_multi_match_score_item_player_stats import GameMultiMatchScoreItem_playerStats

        fields: dict[str, Callable[[Any], None]] = {
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_int_value()),
            "mapId": lambda n : setattr(self, 'map_id', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "matchId": lambda n : setattr(self, 'match_id', n.get_str_value()),
            "opponentTeamScore": lambda n : setattr(self, 'opponent_team_score', n.get_int_value()),
            "playerStats": lambda n : setattr(self, 'player_stats', n.get_object_value(GameMultiMatchScoreItem_playerStats)),
            "screenshotStorageIds": lambda n : setattr(self, 'screenshot_storage_ids', n.get_collection_of_primitive_values(str)),
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
        writer.write_int_value("creatorTeamScore", self.creator_team_score)
        writer.write_str_value("mapId", self.map_id)
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_str_value("matchId", self.match_id)
        writer.write_int_value("opponentTeamScore", self.opponent_team_score)
        writer.write_object_value("playerStats", self.player_stats)
        writer.write_collection_of_primitive_values("screenshotStorageIds", self.screenshot_storage_ids)
        writer.write_collection_of_primitive_values("screenshotUrls", self.screenshot_urls)
        writer.write_additional_data_value(self.additional_data)
    

