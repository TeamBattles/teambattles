from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_match_accepted_team_score import GameMatch_acceptedTeamScore
    from .game_match_completed_at import GameMatch_completedAt
    from .game_match_created_at import GameMatch_createdAt
    from .game_match_creator_team_score import GameMatch_creatorTeamScore
    from .game_match_scheduled_at import GameMatch_scheduledAt
    from .game_match_started_at import GameMatch_startedAt
    from .match_status import MatchStatus
    from .team import Team

@dataclass
class GameMatch(Parsable):
    """
    Match as returned by the game-developer endpoints (includes scores, omits the game object).
    """
    # The acceptedTeam property
    accepted_team: Optional[Team] = None
    # The acceptedTeamScore property
    accepted_team_score: Optional[GameMatch_acceptedTeamScore] = None
    # Number of maps in the series (1, 3, 5, or 7).
    best_of: Optional[int] = None
    # Completion time (ISO 8601).
    completed_at: Optional[GameMatch_completedAt] = None
    # Creation time (ISO 8601).
    created_at: Optional[GameMatch_createdAt] = None
    # The creatorTeam property
    creator_team: Optional[Team] = None
    # The creatorTeamScore property
    creator_team_score: Optional[GameMatch_creatorTeamScore] = None
    # Game mode identifier (from the match's gameModeId).
    game_mode: Optional[str] = None
    # The id property
    id: Optional[str] = None
    # Scheduled start time (ISO 8601).
    scheduled_at: Optional[GameMatch_scheduledAt] = None
    # Actual start time (ISO 8601).
    started_at: Optional[GameMatch_startedAt] = None
    # Lifecycle status of a match.
    status: Optional[MatchStatus] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameMatch:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameMatch
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameMatch()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_match_accepted_team_score import GameMatch_acceptedTeamScore
        from .game_match_completed_at import GameMatch_completedAt
        from .game_match_created_at import GameMatch_createdAt
        from .game_match_creator_team_score import GameMatch_creatorTeamScore
        from .game_match_scheduled_at import GameMatch_scheduledAt
        from .game_match_started_at import GameMatch_startedAt
        from .match_status import MatchStatus
        from .team import Team

        from .game_match_accepted_team_score import GameMatch_acceptedTeamScore
        from .game_match_completed_at import GameMatch_completedAt
        from .game_match_created_at import GameMatch_createdAt
        from .game_match_creator_team_score import GameMatch_creatorTeamScore
        from .game_match_scheduled_at import GameMatch_scheduledAt
        from .game_match_started_at import GameMatch_startedAt
        from .match_status import MatchStatus
        from .team import Team

        fields: dict[str, Callable[[Any], None]] = {
            "acceptedTeam": lambda n : setattr(self, 'accepted_team', n.get_object_value(Team)),
            "acceptedTeamScore": lambda n : setattr(self, 'accepted_team_score', n.get_object_value(GameMatch_acceptedTeamScore)),
            "bestOf": lambda n : setattr(self, 'best_of', n.get_int_value()),
            "completedAt": lambda n : setattr(self, 'completed_at', n.get_object_value(GameMatch_completedAt)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(GameMatch_createdAt)),
            "creatorTeam": lambda n : setattr(self, 'creator_team', n.get_object_value(Team)),
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_object_value(GameMatch_creatorTeamScore)),
            "gameMode": lambda n : setattr(self, 'game_mode', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "scheduledAt": lambda n : setattr(self, 'scheduled_at', n.get_object_value(GameMatch_scheduledAt)),
            "startedAt": lambda n : setattr(self, 'started_at', n.get_object_value(GameMatch_startedAt)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(MatchStatus)),
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
        writer.write_object_value("acceptedTeam", self.accepted_team)
        writer.write_object_value("acceptedTeamScore", self.accepted_team_score)
        writer.write_int_value("bestOf", self.best_of)
        writer.write_object_value("completedAt", self.completed_at)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_object_value("creatorTeam", self.creator_team)
        writer.write_object_value("creatorTeamScore", self.creator_team_score)
        writer.write_str_value("gameMode", self.game_mode)
        writer.write_str_value("id", self.id)
        writer.write_object_value("scheduledAt", self.scheduled_at)
        writer.write_object_value("startedAt", self.started_at)
        writer.write_enum_value("status", self.status)
    

