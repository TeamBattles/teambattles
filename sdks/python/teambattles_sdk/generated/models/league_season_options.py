from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_season_options_default_season_id import LeagueSeasonOptions_defaultSeasonId
    from .league_season_options_seasons import LeagueSeasonOptions_seasons

@dataclass
class LeagueSeasonOptions(Parsable):
    """
    Season selector options.
    """
    # Recommended default option.
    default_season_id: Optional[LeagueSeasonOptions_defaultSeasonId] = None
    # Season selector options for a league game.
    seasons: Optional[list[LeagueSeasonOptions_seasons]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueSeasonOptions:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueSeasonOptions
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueSeasonOptions()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_season_options_default_season_id import LeagueSeasonOptions_defaultSeasonId
        from .league_season_options_seasons import LeagueSeasonOptions_seasons

        from .league_season_options_default_season_id import LeagueSeasonOptions_defaultSeasonId
        from .league_season_options_seasons import LeagueSeasonOptions_seasons

        fields: dict[str, Callable[[Any], None]] = {
            "defaultSeasonId": lambda n : setattr(self, 'default_season_id', n.get_object_value(LeagueSeasonOptions_defaultSeasonId)),
            "seasons": lambda n : setattr(self, 'seasons', n.get_collection_of_object_values(LeagueSeasonOptions_seasons)),
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
        writer.write_object_value("defaultSeasonId", self.default_season_id)
        writer.write_collection_of_object_values("seasons", self.seasons)
        writer.write_str_value("timestamp", self.timestamp)
    

