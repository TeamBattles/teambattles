from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_match_rosters_response_accepted_team_id import GameMatchRostersResponse_acceptedTeamId
    from .game_roster_player import GameRosterPlayer

@dataclass
class GameMatchRostersResponse(Parsable):
    """
    Team rosters for a match, grouped by creator and accepted team.
    """
    # Players on the accepted team (empty when unaccepted).
    accepted_roster: Optional[list[GameRosterPlayer]] = None
    # ID of the team that accepted the match, or null if unaccepted.
    accepted_team_id: Optional[GameMatchRostersResponse_acceptedTeamId] = None
    # Players on the creator team.
    creator_roster: Optional[list[GameRosterPlayer]] = None
    # ID of the team that created the match.
    creator_team_id: Optional[str] = None
    # Server response time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameMatchRostersResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameMatchRostersResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameMatchRostersResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_match_rosters_response_accepted_team_id import GameMatchRostersResponse_acceptedTeamId
        from .game_roster_player import GameRosterPlayer

        from .game_match_rosters_response_accepted_team_id import GameMatchRostersResponse_acceptedTeamId
        from .game_roster_player import GameRosterPlayer

        fields: dict[str, Callable[[Any], None]] = {
            "acceptedRoster": lambda n : setattr(self, 'accepted_roster', n.get_collection_of_object_values(GameRosterPlayer)),
            "acceptedTeamId": lambda n : setattr(self, 'accepted_team_id', n.get_object_value(GameMatchRostersResponse_acceptedTeamId)),
            "creatorRoster": lambda n : setattr(self, 'creator_roster', n.get_collection_of_object_values(GameRosterPlayer)),
            "creatorTeamId": lambda n : setattr(self, 'creator_team_id', n.get_str_value()),
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
        writer.write_collection_of_object_values("acceptedRoster", self.accepted_roster)
        writer.write_object_value("acceptedTeamId", self.accepted_team_id)
        writer.write_collection_of_object_values("creatorRoster", self.creator_roster)
        writer.write_str_value("creatorTeamId", self.creator_team_id)
        writer.write_str_value("timestamp", self.timestamp)
    

