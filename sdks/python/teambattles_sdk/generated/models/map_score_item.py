from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .map_score_item_created_at import MapScoreItem_createdAt
    from .score_confirmer import ScoreConfirmer
    from .score_submitter import ScoreSubmitter

@dataclass
class MapScoreItem(Parsable):
    """
    A single map's score entry.
    """
    # The confirmedBy property
    confirmed_by: Optional[ScoreConfirmer] = None
    # Creation time (ISO 8601).
    created_at: Optional[MapScoreItem_createdAt] = None
    # The creatorTeamScore property
    creator_team_score: Optional[int] = None
    # The mapId property
    map_id: Optional[str] = None
    # The mapIndex property
    map_index: Optional[int] = None
    # The opponentTeamScore property
    opponent_team_score: Optional[int] = None
    # CONFIRMED or PENDING.
    score_status: Optional[str] = None
    # The screenshotUrls property
    screenshot_urls: Optional[list[str]] = None
    # The submittedBy property
    submitted_by: Optional[ScoreSubmitter] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MapScoreItem:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MapScoreItem
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MapScoreItem()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .map_score_item_created_at import MapScoreItem_createdAt
        from .score_confirmer import ScoreConfirmer
        from .score_submitter import ScoreSubmitter

        from .map_score_item_created_at import MapScoreItem_createdAt
        from .score_confirmer import ScoreConfirmer
        from .score_submitter import ScoreSubmitter

        fields: dict[str, Callable[[Any], None]] = {
            "confirmedBy": lambda n : setattr(self, 'confirmed_by', n.get_object_value(ScoreConfirmer)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(MapScoreItem_createdAt)),
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_int_value()),
            "mapId": lambda n : setattr(self, 'map_id', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "opponentTeamScore": lambda n : setattr(self, 'opponent_team_score', n.get_int_value()),
            "scoreStatus": lambda n : setattr(self, 'score_status', n.get_str_value()),
            "screenshotUrls": lambda n : setattr(self, 'screenshot_urls', n.get_collection_of_primitive_values(str)),
            "submittedBy": lambda n : setattr(self, 'submitted_by', n.get_object_value(ScoreSubmitter)),
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
        writer.write_object_value("confirmedBy", self.confirmed_by)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_int_value("creatorTeamScore", self.creator_team_score)
        writer.write_str_value("mapId", self.map_id)
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_int_value("opponentTeamScore", self.opponent_team_score)
        writer.write_str_value("scoreStatus", self.score_status)
        writer.write_collection_of_primitive_values("screenshotUrls", self.screenshot_urls)
        writer.write_object_value("submittedBy", self.submitted_by)
    

