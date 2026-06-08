from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class OrganizationLeaderboardEntry_stats(Parsable):
    # The experience property
    experience: Optional[float] = None
    # The losses property
    losses: Optional[int] = None
    # The matchesPlayed property
    matches_played: Optional[int] = None
    # The teamCount property
    team_count: Optional[int] = None
    # The winRate property
    win_rate: Optional[float] = None
    # The wins property
    wins: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> OrganizationLeaderboardEntry_stats:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: OrganizationLeaderboardEntry_stats
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return OrganizationLeaderboardEntry_stats()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "experience": lambda n : setattr(self, 'experience', n.get_float_value()),
            "losses": lambda n : setattr(self, 'losses', n.get_int_value()),
            "matchesPlayed": lambda n : setattr(self, 'matches_played', n.get_int_value()),
            "teamCount": lambda n : setattr(self, 'team_count', n.get_int_value()),
            "winRate": lambda n : setattr(self, 'win_rate', n.get_float_value()),
            "wins": lambda n : setattr(self, 'wins', n.get_int_value()),
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
        writer.write_float_value("experience", self.experience)
        writer.write_int_value("losses", self.losses)
        writer.write_int_value("matchesPlayed", self.matches_played)
        writer.write_int_value("teamCount", self.team_count)
        writer.write_float_value("winRate", self.win_rate)
        writer.write_int_value("wins", self.wins)
    

