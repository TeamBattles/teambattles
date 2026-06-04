from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_seasons_seasons import LeagueSeasons_seasons

@dataclass
class LeagueSeasons(Parsable):
    """
    Seasons for a league.
    """
    # Number of seasons returned.
    count: Optional[int] = None
    # Season documents for the league.
    seasons: Optional[list[LeagueSeasons_seasons]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueSeasons:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueSeasons
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueSeasons()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_seasons_seasons import LeagueSeasons_seasons

        from .league_seasons_seasons import LeagueSeasons_seasons

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "seasons": lambda n : setattr(self, 'seasons', n.get_collection_of_object_values(LeagueSeasons_seasons)),
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
        writer.write_int_value("count", self.count)
        writer.write_collection_of_object_values("seasons", self.seasons)
        writer.write_str_value("timestamp", self.timestamp)
    

