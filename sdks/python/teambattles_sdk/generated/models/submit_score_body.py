from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class SubmitScoreBody(AdditionalDataHolder, Parsable):
    """
    Map score submission payload for a single map.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Creator team score. Must be a non-negative number.
    creator_team_score: Optional[float] = None
    # Map identifier string (e.g. dust2).
    map_id: Optional[str] = None
    # Zero-based map index. Must be a non-negative integer.
    map_index: Optional[int] = None
    # Accepted/opponent team score. Must be a non-negative number.
    opponent_team_score: Optional[float] = None
    # Optional screenshot URLs for the map result.
    screenshot_urls: Optional[list[str]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> SubmitScoreBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: SubmitScoreBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return SubmitScoreBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_float_value()),
            "mapId": lambda n : setattr(self, 'map_id', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "opponentTeamScore": lambda n : setattr(self, 'opponent_team_score', n.get_float_value()),
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
        writer.write_collection_of_primitive_values("screenshotUrls", self.screenshot_urls)
        writer.write_additional_data_value(self.additional_data)
    

