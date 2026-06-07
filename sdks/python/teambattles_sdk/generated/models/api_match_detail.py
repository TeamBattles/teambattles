from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_detail_completed_at import ApiMatchDetail_completedAt
    from .api_match_detail_created_at import ApiMatchDetail_createdAt
    from .api_match_detail_league_id import ApiMatchDetail_leagueId
    from .api_match_detail_league_season_id import ApiMatchDetail_leagueSeasonId
    from .api_match_detail_match_type import ApiMatchDetail_matchType
    from .api_match_detail_platform import ApiMatchDetail_platform
    from .api_match_detail_region import ApiMatchDetail_region
    from .api_match_detail_scheduled_at import ApiMatchDetail_scheduledAt
    from .api_match_detail_started_at import ApiMatchDetail_startedAt
    from .api_match_detail_winner_team_id import ApiMatchDetail_winnerTeamId
    from .api_match_team import ApiMatchTeam
    from .game import Game
    from .match_status import MatchStatus

@dataclass
class ApiMatchDetail(Parsable):
    """
    Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
    """
    # The acceptedTeam property
    accepted_team: Optional[ApiMatchTeam] = None
    # The bestOf property
    best_of: Optional[int] = None
    # The challengedTeam property
    challenged_team: Optional[ApiMatchTeam] = None
    # The completedAt property
    completed_at: Optional[ApiMatchDetail_completedAt] = None
    # The createdAt property
    created_at: Optional[ApiMatchDetail_createdAt] = None
    # The creatorTeam property
    creator_team: Optional[ApiMatchTeam] = None
    # Game definition.
    game: Optional[Game] = None
    # The gameMode property
    game_mode: Optional[str] = None
    # The id property
    id: Optional[str] = None
    # The leagueId property
    league_id: Optional[ApiMatchDetail_leagueId] = None
    # The leagueSeasonId property
    league_season_id: Optional[ApiMatchDetail_leagueSeasonId] = None
    # The matchType property
    match_type: Optional[ApiMatchDetail_matchType] = None
    # The platform property
    platform: Optional[ApiMatchDetail_platform] = None
    # The publishStatus property
    publish_status: Optional[str] = None
    # The region property
    region: Optional[ApiMatchDetail_region] = None
    # The scheduledAt property
    scheduled_at: Optional[ApiMatchDetail_scheduledAt] = None
    # The selectedMaps property
    selected_maps: Optional[list[str]] = None
    # The selectedObjectives property
    selected_objectives: Optional[list[str]] = None
    # The startedAt property
    started_at: Optional[ApiMatchDetail_startedAt] = None
    # Lifecycle status of a match.
    status: Optional[MatchStatus] = None
    # The teamSize property
    team_size: Optional[int] = None
    # The winnerTeamId property
    winner_team_id: Optional[ApiMatchDetail_winnerTeamId] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiMatchDetail:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiMatchDetail
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiMatchDetail()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_detail_completed_at import ApiMatchDetail_completedAt
        from .api_match_detail_created_at import ApiMatchDetail_createdAt
        from .api_match_detail_league_id import ApiMatchDetail_leagueId
        from .api_match_detail_league_season_id import ApiMatchDetail_leagueSeasonId
        from .api_match_detail_match_type import ApiMatchDetail_matchType
        from .api_match_detail_platform import ApiMatchDetail_platform
        from .api_match_detail_region import ApiMatchDetail_region
        from .api_match_detail_scheduled_at import ApiMatchDetail_scheduledAt
        from .api_match_detail_started_at import ApiMatchDetail_startedAt
        from .api_match_detail_winner_team_id import ApiMatchDetail_winnerTeamId
        from .api_match_team import ApiMatchTeam
        from .game import Game
        from .match_status import MatchStatus

        from .api_match_detail_completed_at import ApiMatchDetail_completedAt
        from .api_match_detail_created_at import ApiMatchDetail_createdAt
        from .api_match_detail_league_id import ApiMatchDetail_leagueId
        from .api_match_detail_league_season_id import ApiMatchDetail_leagueSeasonId
        from .api_match_detail_match_type import ApiMatchDetail_matchType
        from .api_match_detail_platform import ApiMatchDetail_platform
        from .api_match_detail_region import ApiMatchDetail_region
        from .api_match_detail_scheduled_at import ApiMatchDetail_scheduledAt
        from .api_match_detail_started_at import ApiMatchDetail_startedAt
        from .api_match_detail_winner_team_id import ApiMatchDetail_winnerTeamId
        from .api_match_team import ApiMatchTeam
        from .game import Game
        from .match_status import MatchStatus

        fields: dict[str, Callable[[Any], None]] = {
            "acceptedTeam": lambda n : setattr(self, 'accepted_team', n.get_object_value(ApiMatchTeam)),
            "bestOf": lambda n : setattr(self, 'best_of', n.get_int_value()),
            "challengedTeam": lambda n : setattr(self, 'challenged_team', n.get_object_value(ApiMatchTeam)),
            "completedAt": lambda n : setattr(self, 'completed_at', n.get_object_value(ApiMatchDetail_completedAt)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(ApiMatchDetail_createdAt)),
            "creatorTeam": lambda n : setattr(self, 'creator_team', n.get_object_value(ApiMatchTeam)),
            "game": lambda n : setattr(self, 'game', n.get_object_value(Game)),
            "gameMode": lambda n : setattr(self, 'game_mode', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "leagueId": lambda n : setattr(self, 'league_id', n.get_object_value(ApiMatchDetail_leagueId)),
            "leagueSeasonId": lambda n : setattr(self, 'league_season_id', n.get_object_value(ApiMatchDetail_leagueSeasonId)),
            "matchType": lambda n : setattr(self, 'match_type', n.get_object_value(ApiMatchDetail_matchType)),
            "platform": lambda n : setattr(self, 'platform', n.get_object_value(ApiMatchDetail_platform)),
            "publishStatus": lambda n : setattr(self, 'publish_status', n.get_str_value()),
            "region": lambda n : setattr(self, 'region', n.get_object_value(ApiMatchDetail_region)),
            "scheduledAt": lambda n : setattr(self, 'scheduled_at', n.get_object_value(ApiMatchDetail_scheduledAt)),
            "selectedMaps": lambda n : setattr(self, 'selected_maps', n.get_collection_of_primitive_values(str)),
            "selectedObjectives": lambda n : setattr(self, 'selected_objectives', n.get_collection_of_primitive_values(str)),
            "startedAt": lambda n : setattr(self, 'started_at', n.get_object_value(ApiMatchDetail_startedAt)),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(MatchStatus)),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_int_value()),
            "winnerTeamId": lambda n : setattr(self, 'winner_team_id', n.get_object_value(ApiMatchDetail_winnerTeamId)),
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
        writer.write_int_value("bestOf", self.best_of)
        writer.write_object_value("challengedTeam", self.challenged_team)
        writer.write_object_value("completedAt", self.completed_at)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_object_value("creatorTeam", self.creator_team)
        writer.write_object_value("game", self.game)
        writer.write_str_value("gameMode", self.game_mode)
        writer.write_str_value("id", self.id)
        writer.write_object_value("leagueId", self.league_id)
        writer.write_object_value("leagueSeasonId", self.league_season_id)
        writer.write_object_value("matchType", self.match_type)
        writer.write_object_value("platform", self.platform)
        writer.write_str_value("publishStatus", self.publish_status)
        writer.write_object_value("region", self.region)
        writer.write_object_value("scheduledAt", self.scheduled_at)
        writer.write_collection_of_primitive_values("selectedMaps", self.selected_maps)
        writer.write_collection_of_primitive_values("selectedObjectives", self.selected_objectives)
        writer.write_object_value("startedAt", self.started_at)
        writer.write_enum_value("status", self.status)
        writer.write_int_value("teamSize", self.team_size)
        writer.write_object_value("winnerTeamId", self.winner_team_id)
