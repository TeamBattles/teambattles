from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ApiUserStats(Parsable):
    """
    API-safe aggregate user stats.
    """
    # The bestStreak property
    best_streak: Optional[int] = None
    # The currentStreak property
    current_streak: Optional[int] = None
    # The draws property
    draws: Optional[int] = None
    # The experience property
    experience: Optional[float] = None
    # The losses property
    losses: Optional[int] = None
    # The matchesPlayed property
    matches_played: Optional[int] = None
    # User ID these stats belong to.
    user_id: Optional[str] = None
    # The winRate property
    win_rate: Optional[float] = None
    # The wins property
    wins: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiUserStats:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiUserStats
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiUserStats()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "bestStreak": lambda n : setattr(self, 'best_streak', n.get_int_value()),
            "currentStreak": lambda n : setattr(self, 'current_streak', n.get_int_value()),
            "draws": lambda n : setattr(self, 'draws', n.get_int_value()),
            "experience": lambda n : setattr(self, 'experience', n.get_float_value()),
            "losses": lambda n : setattr(self, 'losses', n.get_int_value()),
            "matchesPlayed": lambda n : setattr(self, 'matches_played', n.get_int_value()),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
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
        writer.write_int_value("bestStreak", self.best_streak)
        writer.write_int_value("currentStreak", self.current_streak)
        writer.write_int_value("draws", self.draws)
        writer.write_float_value("experience", self.experience)
        writer.write_int_value("losses", self.losses)
        writer.write_int_value("matchesPlayed", self.matches_played)
        writer.write_str_value("userId", self.user_id)
        writer.write_float_value("winRate", self.win_rate)
        writer.write_int_value("wins", self.wins)
    

