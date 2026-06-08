from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .create_match_request_body_bench_roster import CreateMatchRequestBody_benchRoster
    from .create_match_request_body_game_specific_options import CreateMatchRequestBody_gameSpecificOptions
    from .create_match_request_body_input_device import CreateMatchRequestBody_inputDevice
    from .create_match_request_body_locked_rules import CreateMatchRequestBody_lockedRules
    from .create_match_request_body_map_preference_mode import CreateMatchRequestBody_mapPreferenceMode
    from .create_match_request_body_map_selection_type import CreateMatchRequestBody_mapSelectionType
    from .create_match_request_body_match_type import CreateMatchRequestBody_matchType
    from .create_match_request_body_platform import CreateMatchRequestBody_platform
    from .create_match_request_body_publish_status import CreateMatchRequestBody_publishStatus
    from .create_match_request_body_region import CreateMatchRequestBody_region

@dataclass
class CreateMatchRequestBody(AdditionalDataHolder, Parsable):
    """
    Creates a new match as the API key owner.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Active roster user IDs (must be creator-team members).
    active_roster: Optional[list[str]] = None
    # Optional bench roster.
    bench_roster: Optional[list[CreateMatchRequestBody_benchRoster]] = None
    # Series length (best of N).
    best_of: Optional[int] = None
    # Challenged team ID (required when isChallenge is true).
    challenged_team_id: Optional[str] = None
    # Game ID for the match.
    game_id: Optional[str] = None
    # Game mode ID (client-side definition).
    game_mode_id: Optional[str] = None
    # Game-specific options.
    game_specific_options: Optional[CreateMatchRequestBody_gameSpecificOptions] = None
    # Input device (defaults to ALL).
    input_device: Optional[CreateMatchRequestBody_inputDevice] = None
    # Create as a direct challenge to another team.
    is_challenge: Optional[bool] = None
    # League ID for a league match.
    league_id: Optional[str] = None
    # Locked rule flags.
    locked_rules: Optional[CreateMatchRequestBody_lockedRules] = None
    # Map preference mode.
    map_preference_mode: Optional[CreateMatchRequestBody_mapPreferenceMode] = None
    # Map selection type.
    map_selection_type: Optional[CreateMatchRequestBody_mapSelectionType] = None
    # Match type.
    match_type: Optional[CreateMatchRequestBody_matchType] = None
    # Optional match notes.
    notes: Optional[str] = None
    # Platform (defaults to CROSSPLAY).
    platform: Optional[CreateMatchRequestBody_platform] = None
    # Publish status (defaults to DRAFT).
    publish_status: Optional[CreateMatchRequestBody_publishStatus] = None
    # Region (defaults to NONE).
    region: Optional[CreateMatchRequestBody_region] = None
    # Scheduled start (epoch ms).
    scheduled_at: Optional[float] = None
    # Selected map IDs.
    selected_maps: Optional[list[str]] = None
    # Selected objective IDs.
    selected_objectives: Optional[list[str]] = None
    # Creator team ID. The owner must captain it.
    team_id: Optional[str] = None
    # Players per team.
    team_size: Optional[int] = None
    # Wager amount (WAGER matches only).
    wager_amount: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateMatchRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateMatchRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateMatchRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .create_match_request_body_bench_roster import CreateMatchRequestBody_benchRoster
        from .create_match_request_body_game_specific_options import CreateMatchRequestBody_gameSpecificOptions
        from .create_match_request_body_input_device import CreateMatchRequestBody_inputDevice
        from .create_match_request_body_locked_rules import CreateMatchRequestBody_lockedRules
        from .create_match_request_body_map_preference_mode import CreateMatchRequestBody_mapPreferenceMode
        from .create_match_request_body_map_selection_type import CreateMatchRequestBody_mapSelectionType
        from .create_match_request_body_match_type import CreateMatchRequestBody_matchType
        from .create_match_request_body_platform import CreateMatchRequestBody_platform
        from .create_match_request_body_publish_status import CreateMatchRequestBody_publishStatus
        from .create_match_request_body_region import CreateMatchRequestBody_region

        from .create_match_request_body_bench_roster import CreateMatchRequestBody_benchRoster
        from .create_match_request_body_game_specific_options import CreateMatchRequestBody_gameSpecificOptions
        from .create_match_request_body_input_device import CreateMatchRequestBody_inputDevice
        from .create_match_request_body_locked_rules import CreateMatchRequestBody_lockedRules
        from .create_match_request_body_map_preference_mode import CreateMatchRequestBody_mapPreferenceMode
        from .create_match_request_body_map_selection_type import CreateMatchRequestBody_mapSelectionType
        from .create_match_request_body_match_type import CreateMatchRequestBody_matchType
        from .create_match_request_body_platform import CreateMatchRequestBody_platform
        from .create_match_request_body_publish_status import CreateMatchRequestBody_publishStatus
        from .create_match_request_body_region import CreateMatchRequestBody_region

        fields: dict[str, Callable[[Any], None]] = {
            "activeRoster": lambda n : setattr(self, 'active_roster', n.get_collection_of_primitive_values(str)),
            "benchRoster": lambda n : setattr(self, 'bench_roster', n.get_collection_of_object_values(CreateMatchRequestBody_benchRoster)),
            "bestOf": lambda n : setattr(self, 'best_of', n.get_int_value()),
            "challengedTeamId": lambda n : setattr(self, 'challenged_team_id', n.get_str_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "gameModeId": lambda n : setattr(self, 'game_mode_id', n.get_str_value()),
            "gameSpecificOptions": lambda n : setattr(self, 'game_specific_options', n.get_object_value(CreateMatchRequestBody_gameSpecificOptions)),
            "inputDevice": lambda n : setattr(self, 'input_device', n.get_enum_value(CreateMatchRequestBody_inputDevice)),
            "isChallenge": lambda n : setattr(self, 'is_challenge', n.get_bool_value()),
            "leagueId": lambda n : setattr(self, 'league_id', n.get_str_value()),
            "lockedRules": lambda n : setattr(self, 'locked_rules', n.get_object_value(CreateMatchRequestBody_lockedRules)),
            "mapPreferenceMode": lambda n : setattr(self, 'map_preference_mode', n.get_enum_value(CreateMatchRequestBody_mapPreferenceMode)),
            "mapSelectionType": lambda n : setattr(self, 'map_selection_type', n.get_enum_value(CreateMatchRequestBody_mapSelectionType)),
            "matchType": lambda n : setattr(self, 'match_type', n.get_enum_value(CreateMatchRequestBody_matchType)),
            "notes": lambda n : setattr(self, 'notes', n.get_str_value()),
            "platform": lambda n : setattr(self, 'platform', n.get_enum_value(CreateMatchRequestBody_platform)),
            "publishStatus": lambda n : setattr(self, 'publish_status', n.get_enum_value(CreateMatchRequestBody_publishStatus)),
            "region": lambda n : setattr(self, 'region', n.get_enum_value(CreateMatchRequestBody_region)),
            "scheduledAt": lambda n : setattr(self, 'scheduled_at', n.get_float_value()),
            "selectedMaps": lambda n : setattr(self, 'selected_maps', n.get_collection_of_primitive_values(str)),
            "selectedObjectives": lambda n : setattr(self, 'selected_objectives', n.get_collection_of_primitive_values(str)),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_int_value()),
            "wagerAmount": lambda n : setattr(self, 'wager_amount', n.get_float_value()),
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
        writer.write_collection_of_primitive_values("activeRoster", self.active_roster)
        writer.write_collection_of_object_values("benchRoster", self.bench_roster)
        writer.write_int_value("bestOf", self.best_of)
        writer.write_str_value("challengedTeamId", self.challenged_team_id)
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("gameModeId", self.game_mode_id)
        writer.write_object_value("gameSpecificOptions", self.game_specific_options)
        writer.write_enum_value("inputDevice", self.input_device)
        writer.write_bool_value("isChallenge", self.is_challenge)
        writer.write_str_value("leagueId", self.league_id)
        writer.write_object_value("lockedRules", self.locked_rules)
        writer.write_enum_value("mapPreferenceMode", self.map_preference_mode)
        writer.write_enum_value("mapSelectionType", self.map_selection_type)
        writer.write_enum_value("matchType", self.match_type)
        writer.write_str_value("notes", self.notes)
        writer.write_enum_value("platform", self.platform)
        writer.write_enum_value("publishStatus", self.publish_status)
        writer.write_enum_value("region", self.region)
        writer.write_float_value("scheduledAt", self.scheduled_at)
        writer.write_collection_of_primitive_values("selectedMaps", self.selected_maps)
        writer.write_collection_of_primitive_values("selectedObjectives", self.selected_objectives)
        writer.write_str_value("teamId", self.team_id)
        writer.write_int_value("teamSize", self.team_size)
        writer.write_float_value("wagerAmount", self.wager_amount)
        writer.write_additional_data_value(self.additional_data)
    

