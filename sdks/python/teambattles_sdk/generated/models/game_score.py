from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class GameScore(Parsable):
    """
    A single map score as returned when reading scores.
    """
    # When the score was confirmed (ISO 8601).
    confirmed_at: Optional[str] = None
    # Score for the creator team.
    creator_team_score: Optional[int] = None
    # Identifier of the map that was played.
    map_id: Optional[str] = None
    # Zero-based index of the map within the series.
    map_index: Optional[int] = None
    # Score for the opponent (accepted) team.
    opponent_team_score: Optional[int] = None
    # Confirmation state: "CONFIRMED" or "PENDING".
    score_status: Optional[str] = None
    # When the score was submitted (ISO 8601).
    submitted_at: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameScore:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameScore
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameScore()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "confirmedAt": lambda n : setattr(self, 'confirmed_at', n.get_str_value()),
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_int_value()),
            "mapId": lambda n : setattr(self, 'map_id', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "opponentTeamScore": lambda n : setattr(self, 'opponent_team_score', n.get_int_value()),
            "scoreStatus": lambda n : setattr(self, 'score_status', n.get_str_value()),
            "submittedAt": lambda n : setattr(self, 'submitted_at', n.get_str_value()),
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
        writer.write_str_value("confirmedAt", self.confirmed_at)
        writer.write_int_value("creatorTeamScore", self.creator_team_score)
        writer.write_str_value("mapId", self.map_id)
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_int_value("opponentTeamScore", self.opponent_team_score)
        writer.write_str_value("scoreStatus", self.score_status)
        writer.write_str_value("submittedAt", self.submitted_at)
    

