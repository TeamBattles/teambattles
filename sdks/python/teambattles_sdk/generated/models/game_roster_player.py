from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_roster_player_name import GameRosterPlayer_name
    from .game_roster_player_username import GameRosterPlayer_username

@dataclass
class GameRosterPlayer(Parsable):
    """
    A single player entry on a match roster.
    """
    # Whether the player has checked in for the match.
    is_checked_in: Optional[bool] = None
    # Player's display name, or null if unset.
    name: Optional[GameRosterPlayer_name] = None
    # ID of the team the player belongs to.
    team_id: Optional[str] = None
    # Player's user ID.
    user_id: Optional[str] = None
    # Player's username, or null if unset.
    username: Optional[GameRosterPlayer_username] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameRosterPlayer:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameRosterPlayer
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameRosterPlayer()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_roster_player_name import GameRosterPlayer_name
        from .game_roster_player_username import GameRosterPlayer_username

        from .game_roster_player_name import GameRosterPlayer_name
        from .game_roster_player_username import GameRosterPlayer_username

        fields: dict[str, Callable[[Any], None]] = {
            "isCheckedIn": lambda n : setattr(self, 'is_checked_in', n.get_bool_value()),
            "name": lambda n : setattr(self, 'name', n.get_object_value(GameRosterPlayer_name)),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
            "username": lambda n : setattr(self, 'username', n.get_object_value(GameRosterPlayer_username)),
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
        writer.write_bool_value("isCheckedIn", self.is_checked_in)
        writer.write_object_value("name", self.name)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("userId", self.user_id)
        writer.write_object_value("username", self.username)
    

