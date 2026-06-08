from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .update_game_rules_request_body_allowed_time_range import UpdateGameRulesRequestBody_allowedTimeRange
    from .update_game_rules_request_body_match_format import UpdateGameRulesRequestBody_matchFormat
    from .update_game_rules_request_body_roster_change_window_time import UpdateGameRulesRequestBody_rosterChangeWindowTime
    from .update_game_rules_request_body_team_size import UpdateGameRulesRequestBody_teamSize

@dataclass
class UpdateGameRulesRequestBody(AdditionalDataHolder, Parsable):
    """
    Updates league game rules.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The allowedDays property
    allowed_days: Optional[list[str]] = None
    # The allowedMapIds property
    allowed_map_ids: Optional[list[str]] = None
    # The allowedPlaylistIds property
    allowed_playlist_ids: Optional[list[str]] = None
    # The allowedTimeRange property
    allowed_time_range: Optional[UpdateGameRulesRequestBody_allowedTimeRange] = None
    # The blockedDays property
    blocked_days: Optional[list[str]] = None
    # The challengeCooldownMinutes property
    challenge_cooldown_minutes: Optional[float] = None
    # The challengesEnabled property
    challenges_enabled: Optional[bool] = None
    # The forceCompetitive property
    force_competitive: Optional[bool] = None
    # Game ID whose league rules should change.
    game_id: Optional[str] = None
    # The matchFormat property
    match_format: Optional[UpdateGameRulesRequestBody_matchFormat] = None
    # The maxChallengesPerTeamPerSeason property
    max_challenges_per_team_per_season: Optional[float] = None
    # The maxPendingChallengesPerOpponent property
    max_pending_challenges_per_opponent: Optional[float] = None
    # The maxPendingChallengesTotal property
    max_pending_challenges_total: Optional[float] = None
    # The maxPointsMatchesPerPairPer24h property
    max_points_matches_per_pair_per24h: Optional[float] = None
    # The maxRosterChangesPerWeek property
    max_roster_changes_per_week: Optional[float] = None
    # The maxRosterSize property
    max_roster_size: Optional[float] = None
    # The maxWagerAmount property
    max_wager_amount: Optional[float] = None
    # The minRosterSize property
    min_roster_size: Optional[float] = None
    # The minWagerAmount property
    min_wager_amount: Optional[float] = None
    # The rosterChangeWindowDays property
    roster_change_window_days: Optional[list[str]] = None
    # The rosterChangeWindowTime property
    roster_change_window_time: Optional[UpdateGameRulesRequestBody_rosterChangeWindowTime] = None
    # The rosterLockEnabled property
    roster_lock_enabled: Optional[bool] = None
    # The teamSize property
    team_size: Optional[UpdateGameRulesRequestBody_teamSize] = None
    # The timezone property
    timezone: Optional[str] = None
    # The wagersAllowed property
    wagers_allowed: Optional[bool] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateGameRulesRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateGameRulesRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateGameRulesRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .update_game_rules_request_body_allowed_time_range import UpdateGameRulesRequestBody_allowedTimeRange
        from .update_game_rules_request_body_match_format import UpdateGameRulesRequestBody_matchFormat
        from .update_game_rules_request_body_roster_change_window_time import UpdateGameRulesRequestBody_rosterChangeWindowTime
        from .update_game_rules_request_body_team_size import UpdateGameRulesRequestBody_teamSize

        from .update_game_rules_request_body_allowed_time_range import UpdateGameRulesRequestBody_allowedTimeRange
        from .update_game_rules_request_body_match_format import UpdateGameRulesRequestBody_matchFormat
        from .update_game_rules_request_body_roster_change_window_time import UpdateGameRulesRequestBody_rosterChangeWindowTime
        from .update_game_rules_request_body_team_size import UpdateGameRulesRequestBody_teamSize

        fields: dict[str, Callable[[Any], None]] = {
            "allowedDays": lambda n : setattr(self, 'allowed_days', n.get_collection_of_primitive_values(str)),
            "allowedMapIds": lambda n : setattr(self, 'allowed_map_ids', n.get_collection_of_primitive_values(str)),
            "allowedPlaylistIds": lambda n : setattr(self, 'allowed_playlist_ids', n.get_collection_of_primitive_values(str)),
            "allowedTimeRange": lambda n : setattr(self, 'allowed_time_range', n.get_object_value(UpdateGameRulesRequestBody_allowedTimeRange)),
            "blockedDays": lambda n : setattr(self, 'blocked_days', n.get_collection_of_primitive_values(str)),
            "challengeCooldownMinutes": lambda n : setattr(self, 'challenge_cooldown_minutes', n.get_float_value()),
            "challengesEnabled": lambda n : setattr(self, 'challenges_enabled', n.get_bool_value()),
            "forceCompetitive": lambda n : setattr(self, 'force_competitive', n.get_bool_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "matchFormat": lambda n : setattr(self, 'match_format', n.get_enum_value(UpdateGameRulesRequestBody_matchFormat)),
            "maxChallengesPerTeamPerSeason": lambda n : setattr(self, 'max_challenges_per_team_per_season', n.get_float_value()),
            "maxPendingChallengesPerOpponent": lambda n : setattr(self, 'max_pending_challenges_per_opponent', n.get_float_value()),
            "maxPendingChallengesTotal": lambda n : setattr(self, 'max_pending_challenges_total', n.get_float_value()),
            "maxPointsMatchesPerPairPer24h": lambda n : setattr(self, 'max_points_matches_per_pair_per24h', n.get_float_value()),
            "maxRosterChangesPerWeek": lambda n : setattr(self, 'max_roster_changes_per_week', n.get_float_value()),
            "maxRosterSize": lambda n : setattr(self, 'max_roster_size', n.get_float_value()),
            "maxWagerAmount": lambda n : setattr(self, 'max_wager_amount', n.get_float_value()),
            "minRosterSize": lambda n : setattr(self, 'min_roster_size', n.get_float_value()),
            "minWagerAmount": lambda n : setattr(self, 'min_wager_amount', n.get_float_value()),
            "rosterChangeWindowDays": lambda n : setattr(self, 'roster_change_window_days', n.get_collection_of_primitive_values(str)),
            "rosterChangeWindowTime": lambda n : setattr(self, 'roster_change_window_time', n.get_object_value(UpdateGameRulesRequestBody_rosterChangeWindowTime)),
            "rosterLockEnabled": lambda n : setattr(self, 'roster_lock_enabled', n.get_bool_value()),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_object_value(UpdateGameRulesRequestBody_teamSize)),
            "timezone": lambda n : setattr(self, 'timezone', n.get_str_value()),
            "wagersAllowed": lambda n : setattr(self, 'wagers_allowed', n.get_bool_value()),
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
        writer.write_collection_of_primitive_values("allowedDays", self.allowed_days)
        writer.write_collection_of_primitive_values("allowedMapIds", self.allowed_map_ids)
        writer.write_collection_of_primitive_values("allowedPlaylistIds", self.allowed_playlist_ids)
        writer.write_object_value("allowedTimeRange", self.allowed_time_range)
        writer.write_collection_of_primitive_values("blockedDays", self.blocked_days)
        writer.write_float_value("challengeCooldownMinutes", self.challenge_cooldown_minutes)
        writer.write_bool_value("challengesEnabled", self.challenges_enabled)
        writer.write_bool_value("forceCompetitive", self.force_competitive)
        writer.write_str_value("gameId", self.game_id)
        writer.write_enum_value("matchFormat", self.match_format)
        writer.write_float_value("maxChallengesPerTeamPerSeason", self.max_challenges_per_team_per_season)
        writer.write_float_value("maxPendingChallengesPerOpponent", self.max_pending_challenges_per_opponent)
        writer.write_float_value("maxPendingChallengesTotal", self.max_pending_challenges_total)
        writer.write_float_value("maxPointsMatchesPerPairPer24h", self.max_points_matches_per_pair_per24h)
        writer.write_float_value("maxRosterChangesPerWeek", self.max_roster_changes_per_week)
        writer.write_float_value("maxRosterSize", self.max_roster_size)
        writer.write_float_value("maxWagerAmount", self.max_wager_amount)
        writer.write_float_value("minRosterSize", self.min_roster_size)
        writer.write_float_value("minWagerAmount", self.min_wager_amount)
        writer.write_collection_of_primitive_values("rosterChangeWindowDays", self.roster_change_window_days)
        writer.write_object_value("rosterChangeWindowTime", self.roster_change_window_time)
        writer.write_bool_value("rosterLockEnabled", self.roster_lock_enabled)
        writer.write_object_value("teamSize", self.team_size)
        writer.write_str_value("timezone", self.timezone)
        writer.write_bool_value("wagersAllowed", self.wagers_allowed)
        writer.write_additional_data_value(self.additional_data)
    

