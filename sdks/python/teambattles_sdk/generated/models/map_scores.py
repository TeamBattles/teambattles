from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .map_scores_series_score import MapScores_seriesScore
    from .map_score_item import MapScoreItem

@dataclass
class MapScores(Parsable):
    """
    All map scores for a match with a series summary.
    """
    # The scores property
    scores: Optional[list[MapScoreItem]] = None
    # The seriesScore property
    series_score: Optional[MapScores_seriesScore] = None
    # Response timestamp (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MapScores:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MapScores
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MapScores()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .map_scores_series_score import MapScores_seriesScore
        from .map_score_item import MapScoreItem

        from .map_scores_series_score import MapScores_seriesScore
        from .map_score_item import MapScoreItem

        fields: dict[str, Callable[[Any], None]] = {
            "scores": lambda n : setattr(self, 'scores', n.get_collection_of_object_values(MapScoreItem)),
            "seriesScore": lambda n : setattr(self, 'series_score', n.get_object_value(MapScores_seriesScore)),
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
        writer.write_collection_of_object_values("scores", self.scores)
        writer.write_object_value("seriesScore", self.series_score)
        writer.write_str_value("timestamp", self.timestamp)
    

