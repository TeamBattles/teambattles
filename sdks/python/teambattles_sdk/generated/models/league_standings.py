from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_standings_standings import LeagueStandings_standings

@dataclass
class LeagueStandings(Parsable):
    """
    League standings for a season.
    """
    # Number of teams returned.
    count: Optional[int] = None
    # Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
    standings: Optional[list[LeagueStandings_standings]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueStandings:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueStandings
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueStandings()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_standings_standings import LeagueStandings_standings

        from .league_standings_standings import LeagueStandings_standings

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "standings": lambda n : setattr(self, 'standings', n.get_collection_of_object_values(LeagueStandings_standings)),
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
        writer.write_collection_of_object_values("standings", self.standings)
        writer.write_str_value("timestamp", self.timestamp)
    

