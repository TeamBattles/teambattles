from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_detail_team import GameDetailTeam
    from .game_match_detail_accepted_team_score import GameMatchDetail_acceptedTeamScore
    from .game_match_detail_completed_at import GameMatchDetail_completedAt
    from .game_match_detail_created_at import GameMatchDetail_createdAt
    from .game_match_detail_creator_team_score import GameMatchDetail_creatorTeamScore
    from .game_match_detail_league_id import GameMatchDetail_leagueId
    from .game_match_detail_league_season_id import GameMatchDetail_leagueSeasonId
    from .game_match_detail_loser_team_id import GameMatchDetail_loserTeamId
    from .game_match_detail_scheduled_at import GameMatchDetail_scheduledAt
    from .game_match_detail_started_at import GameMatchDetail_startedAt
    from .game_match_detail_winner_team_id import GameMatchDetail_winnerTeamId
    from .match_status import MatchStatus

@dataclass
class GameMatchDetail(Parsable):
    """
    Detailed match payload returned inside the game-developer match-detail response.
    """
    # The acceptedTeam property
    accepted_team: Optional[GameDetailTeam] = None
    # The acceptedTeamScore property
    accepted_team_score: Optional[GameMatchDetail_acceptedTeamScore] = None
    # Number of maps in the series (1, 3, 5, or 7).
    best_of: Optional[int] = None
    # Completion time (ISO 8601).
    completed_at: Optional[GameMatchDetail_completedAt] = None
    # Creation time (ISO 8601).
    created_at: Optional[GameMatchDetail_createdAt] = None
    # The creatorTeam property
    creator_team: Optional[GameDetailTeam] = None
    # The creatorTeamScore property
    creator_team_score: Optional[GameMatchDetail_creatorTeamScore] = None
    # Game ID the match belongs to.
    game_id: Optional[str] = None
    # Game mode identifier (from the match's gameModeId).
    game_mode: Optional[str] = None
    # The id property
    id: Optional[str] = None
    # League this match belongs to, if any (SP-7 league wave).
    league_id: Optional[GameMatchDetail_leagueId] = None
    # League season this match belongs to, if any.
    league_season_id: Optional[GameMatchDetail_leagueSeasonId] = None
    # Losing team ID once the match completes.
    loser_team_id: Optional[GameMatchDetail_loserTeamId] = None
    # Scheduled start time (ISO 8601).
    scheduled_at: Optional[GameMatchDetail_scheduledAt] = None
    # Actual start time (ISO 8601).
    started_at: Optional[GameMatchDetail_startedAt] = None
    # Lifecycle status of a match.
    status: Optional[MatchStatus] = None
    # Winning team ID once the match completes.
    winner_team_id: Optional[GameMatchDetail_winnerTeamId] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameMatchDetail:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameMatchDetail
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameMatchDetail()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_detail_team import GameDetailTeam
        from .game_match_detail_accepted_team_score import GameMatchDetail_acceptedTeamScore
        from .game_match_detail_completed_at import GameMatchDetail_completedAt
        from .game_match_detail_created_at import GameMatchDetail_createdAt
        from .game_match_detail_creator_team_score import GameMatchDetail_creatorTeamScore
        from .game_match_detail_league_id import GameMatchDetail_leagueId
        from .game_match_detail_league_season_id import GameMatchDetail_leagueSeasonId
        from .game_match_detail_loser_team_id import GameMatchDetail_loserTeamId
        from .game_match_detail_scheduled_at import GameMatchDetail_scheduledAt
        from .game_match_detail_started_at import GameMatchDetail_startedAt
        from .game_match_detail_winner_team_id import GameMatchDetail_winnerTeamId
        from .match_status import MatchStatus

        from .game_detail_team import GameDetailTeam
        from .game_match_detail_accepted_team_score import GameMatchDetail_acceptedTeamScore
        from .game_match_detail_completed_at import GameMatchDetail_completedAt
        from .game_match_detail_created_at import GameMatchDetail_createdAt
        from .game_match_detail_creator_team_score import GameMatchDetail_creatorTeamScore
        from .game_match_detail_league_id import GameMatchDetail_leagueId
        from .game_match_detail_league_season_id import GameMatchDetail_leagueSeasonId
        from .game_match_detail_loser_team_id import GameMatchDetail_loserTeamId
        from .game_match_detail_scheduled_at import GameMatchDetail_scheduledAt
        from .game_match_detail_started_at import GameMatchDetail_startedAt
        from .game_match_detail_winner_team_id import GameMatchDetail_winnerTeamId
        from .match_status import MatchStatus

        fields: dict[str, Callable[[Any], None]] = {
            "acceptedTeam": lambda n : setattr(self, 'accepted_team', n.get_object_value(GameDetailTeam)),
            "acceptedTeamScore": lambda n : setattr(self, 'accepted_team_score', n.get_object_value(GameMatchDetail_acceptedTeamScore)),
            "bestOf": lambda n : setattr(self, 'best_of', n.get_int_value()),
            "completedAt": lambda n : setattr(self, 'completed_at', n.get_object_value(GameMatchDetail_completedAt)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(GameMatchDetail_createdAt)),
            "creatorTeam": lambda n : setattr(self, 'creator_team', n.get_object_value(GameDetailTeam)),
            "creatorTeamScore": lambda n : setattr(self, 'creator_team_score', n.get_object_value(GameMatchDetail_creatorTeamScore)),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "gameMode": lambda n : setattr(self, 'game_mode', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "leagueId": lambda n : setattr(self, 'league_id', n.get_object_value(GameMatchDetail_leagueId)),
            "leagueSeasonId": lambda n : setattr(self, 'league_season_id', n.get_object_value(GameMatchDetail_leagueSeasonId)),
            "loserTeamId": lambda n : setattr(self, 'loser_team_id', n.get_object_value(GameMatchDetail_loserTeamId)),
            "scheduledAt": lambda n : setattr(self, 'scheduled_at', n.get_object_value(GameMatchDetail_scheduledAt)),
            "startedAt": lambda n : setattr(self, 'started_at', n.get_object_value(GameMatchDetail_startedAt)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(MatchStatus)),
            "winnerTeamId": lambda n : setattr(self, 'winner_team_id', n.get_object_value(GameMatchDetail_winnerTeamId)),
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
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("gameMode", self.game_mode)
        writer.write_str_value("id", self.id)
        writer.write_object_value("leagueId", self.league_id)
        writer.write_object_value("leagueSeasonId", self.league_season_id)
        writer.write_object_value("loserTeamId", self.loser_team_id)
        writer.write_object_value("scheduledAt", self.scheduled_at)
        writer.write_object_value("startedAt", self.started_at)
        writer.write_enum_value("status", self.status)
        writer.write_object_value("winnerTeamId", self.winner_team_id)


