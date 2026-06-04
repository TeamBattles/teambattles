from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class GameSeriesScore(Parsable):
    """
    Aggregate map-win tally across the series.
    """
    # Confirmed map wins for the creator team.
    creator_map_wins: Optional[int] = None
    # Confirmed map wins for the opponent team.
    opponent_map_wins: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameSeriesScore:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameSeriesScore
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameSeriesScore()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "creatorMapWins": lambda n : setattr(self, 'creator_map_wins', n.get_int_value()),
            "opponentMapWins": lambda n : setattr(self, 'opponent_map_wins', n.get_int_value()),
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
        writer.write_int_value("creatorMapWins", self.creator_map_wins)
        writer.write_int_value("opponentMapWins", self.opponent_map_wins)
    

