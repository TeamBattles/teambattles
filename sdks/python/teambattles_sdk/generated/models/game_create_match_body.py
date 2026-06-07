from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game_create_match_body_input_device import GameCreateMatchBody_inputDevice
    from .game_create_match_body_map_preference_mode import GameCreateMatchBody_mapPreferenceMode
    from .game_create_match_body_map_selection_type import GameCreateMatchBody_mapSelectionType
    from .game_create_match_body_platform import GameCreateMatchBody_platform
    from .game_create_match_body_region import GameCreateMatchBody_region

@dataclass
class GameCreateMatchBody(AdditionalDataHolder, Parsable):
    """
    Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
    accepted_team_id: Optional[str] = None
    # Number of maps in the series (1, 3, 5, or 7).
    best_of: Optional[float] = None
    # ID of the creating team. Must belong to the key's bound game.
    creator_team_id: Optional[str] = None
    # Game mode identifier (e.g. search_and_destroy).
    game_mode_id: Optional[str] = None
    # Allowed input device (e.g. ALL).
    input_device: Optional[GameCreateMatchBody_inputDevice] = None
    # Map preference mode (PREFERRED, VETO, or MANUAL).
    map_preference_mode: Optional[GameCreateMatchBody_mapPreferenceMode] = None
    # Map selection type (COMPETITIVE or FLEX).
    map_selection_type: Optional[GameCreateMatchBody_mapSelectionType] = None
    # Match platform (e.g. CROSSPLAY).
    platform: Optional[GameCreateMatchBody_platform] = None
    # Match region (e.g. NONE).
    region: Optional[GameCreateMatchBody_region] = None
    # Optional scheduled start time (epoch ms).
    scheduled_at: Optional[float] = None
    # Optional pre-selected map IDs.
    selected_maps: Optional[list[str]] = None
    # Optional pre-selected objective IDs.
    selected_objectives: Optional[list[str]] = None
    # Players per team (validated against the game's min/max).
    team_size: Optional[float] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameCreateMatchBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameCreateMatchBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameCreateMatchBody()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .game_create_match_body_input_device import GameCreateMatchBody_inputDevice
        from .game_create_match_body_map_preference_mode import GameCreateMatchBody_mapPreferenceMode
        from .game_create_match_body_map_selection_type import GameCreateMatchBody_mapSelectionType
        from .game_create_match_body_platform import GameCreateMatchBody_platform
        from .game_create_match_body_region import GameCreateMatchBody_region

        from .game_create_match_body_input_device import GameCreateMatchBody_inputDevice
        from .game_create_match_body_map_preference_mode import GameCreateMatchBody_mapPreferenceMode
        from .game_create_match_body_map_selection_type import GameCreateMatchBody_mapSelectionType
        from .game_create_match_body_platform import GameCreateMatchBody_platform
        from .game_create_match_body_region import GameCreateMatchBody_region

        fields: dict[str, Callable[[Any], None]] = {
            "acceptedTeamId": lambda n : setattr(self, 'accepted_team_id', n.get_str_value()),
            "bestOf": lambda n : setattr(self, 'best_of', n.get_float_value()),
            "creatorTeamId": lambda n : setattr(self, 'creator_team_id', n.get_str_value()),
            "gameModeId": lambda n : setattr(self, 'game_mode_id', n.get_str_value()),
            "inputDevice": lambda n : setattr(self, 'input_device', n.get_enum_value(GameCreateMatchBody_inputDevice)),
            "mapPreferenceMode": lambda n : setattr(self, 'map_preference_mode', n.get_enum_value(GameCreateMatchBody_mapPreferenceMode)),
            "mapSelectionType": lambda n : setattr(self, 'map_selection_type', n.get_enum_value(GameCreateMatchBody_mapSelectionType)),
            "platform": lambda n : setattr(self, 'platform', n.get_enum_value(GameCreateMatchBody_platform)),
            "region": lambda n : setattr(self, 'region', n.get_enum_value(GameCreateMatchBody_region)),
            "scheduledAt": lambda n : setattr(self, 'scheduled_at', n.get_float_value()),
            "selectedMaps": lambda n : setattr(self, 'selected_maps', n.get_collection_of_primitive_values(str)),
            "selectedObjectives": lambda n : setattr(self, 'selected_objectives', n.get_collection_of_primitive_values(str)),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_float_value()),
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
        writer.write_str_value("acceptedTeamId", self.accepted_team_id)
        writer.write_float_value("bestOf", self.best_of)
        writer.write_str_value("creatorTeamId", self.creator_team_id)
        writer.write_str_value("gameModeId", self.game_mode_id)
        writer.write_enum_value("inputDevice", self.input_device)
        writer.write_enum_value("mapPreferenceMode", self.map_preference_mode)
        writer.write_enum_value("mapSelectionType", self.map_selection_type)
        writer.write_enum_value("platform", self.platform)
        writer.write_enum_value("region", self.region)
        writer.write_float_value("scheduledAt", self.scheduled_at)
        writer.write_collection_of_primitive_values("selectedMaps", self.selected_maps)
        writer.write_collection_of_primitive_values("selectedObjectives", self.selected_objectives)
        writer.write_float_value("teamSize", self.team_size)
        writer.write_additional_data_value(self.additional_data)
