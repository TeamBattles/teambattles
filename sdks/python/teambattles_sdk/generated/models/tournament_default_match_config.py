from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_default_match_config_game_specific_options import TournamentDefaultMatchConfig_gameSpecificOptions
    from .tournament_default_match_config_input_device import TournamentDefaultMatchConfig_inputDevice
    from .tournament_default_match_config_locked_rules import TournamentDefaultMatchConfig_lockedRules
    from .tournament_default_match_config_map_preference_mode import TournamentDefaultMatchConfig_mapPreferenceMode
    from .tournament_default_match_config_map_selection_type import TournamentDefaultMatchConfig_mapSelectionType
    from .tournament_default_match_config_platform import TournamentDefaultMatchConfig_platform
    from .tournament_default_match_config_region import TournamentDefaultMatchConfig_region

@dataclass
class TournamentDefaultMatchConfig(AdditionalDataHolder, Parsable):
    """
    Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
    game_mode_id: Optional[str] = None
    # The gameSpecificOptions property
    game_specific_options: Optional[TournamentDefaultMatchConfig_gameSpecificOptions] = None
    # The inputDevice property
    input_device: Optional[TournamentDefaultMatchConfig_inputDevice] = None
    # Rule keys neither team may renegotiate on a generated match.
    locked_rules: Optional[TournamentDefaultMatchConfig_lockedRules] = None
    # Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
    map_preference_mode: Optional[TournamentDefaultMatchConfig_mapPreferenceMode] = None
    # The mapSelectionType property
    map_selection_type: Optional[TournamentDefaultMatchConfig_mapSelectionType] = None
    # The platform property
    platform: Optional[TournamentDefaultMatchConfig_platform] = None
    # The region property
    region: Optional[TournamentDefaultMatchConfig_region] = None
    # Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
    selected_maps: Optional[list[str]] = None
    # The selectedObjectives property
    selected_objectives: Optional[list[str]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentDefaultMatchConfig:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentDefaultMatchConfig
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentDefaultMatchConfig()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_default_match_config_game_specific_options import TournamentDefaultMatchConfig_gameSpecificOptions
        from .tournament_default_match_config_input_device import TournamentDefaultMatchConfig_inputDevice
        from .tournament_default_match_config_locked_rules import TournamentDefaultMatchConfig_lockedRules
        from .tournament_default_match_config_map_preference_mode import TournamentDefaultMatchConfig_mapPreferenceMode
        from .tournament_default_match_config_map_selection_type import TournamentDefaultMatchConfig_mapSelectionType
        from .tournament_default_match_config_platform import TournamentDefaultMatchConfig_platform
        from .tournament_default_match_config_region import TournamentDefaultMatchConfig_region

        from .tournament_default_match_config_game_specific_options import TournamentDefaultMatchConfig_gameSpecificOptions
        from .tournament_default_match_config_input_device import TournamentDefaultMatchConfig_inputDevice
        from .tournament_default_match_config_locked_rules import TournamentDefaultMatchConfig_lockedRules
        from .tournament_default_match_config_map_preference_mode import TournamentDefaultMatchConfig_mapPreferenceMode
        from .tournament_default_match_config_map_selection_type import TournamentDefaultMatchConfig_mapSelectionType
        from .tournament_default_match_config_platform import TournamentDefaultMatchConfig_platform
        from .tournament_default_match_config_region import TournamentDefaultMatchConfig_region

        fields: dict[str, Callable[[Any], None]] = {
            "gameModeId": lambda n : setattr(self, 'game_mode_id', n.get_str_value()),
            "gameSpecificOptions": lambda n : setattr(self, 'game_specific_options', n.get_object_value(TournamentDefaultMatchConfig_gameSpecificOptions)),
            "inputDevice": lambda n : setattr(self, 'input_device', n.get_enum_value(TournamentDefaultMatchConfig_inputDevice)),
            "lockedRules": lambda n : setattr(self, 'locked_rules', n.get_object_value(TournamentDefaultMatchConfig_lockedRules)),
            "mapPreferenceMode": lambda n : setattr(self, 'map_preference_mode', n.get_enum_value(TournamentDefaultMatchConfig_mapPreferenceMode)),
            "mapSelectionType": lambda n : setattr(self, 'map_selection_type', n.get_enum_value(TournamentDefaultMatchConfig_mapSelectionType)),
            "platform": lambda n : setattr(self, 'platform', n.get_enum_value(TournamentDefaultMatchConfig_platform)),
            "region": lambda n : setattr(self, 'region', n.get_enum_value(TournamentDefaultMatchConfig_region)),
            "selectedMaps": lambda n : setattr(self, 'selected_maps', n.get_collection_of_primitive_values(str)),
            "selectedObjectives": lambda n : setattr(self, 'selected_objectives', n.get_collection_of_primitive_values(str)),
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
        writer.write_str_value("gameModeId", self.game_mode_id)
        writer.write_object_value("gameSpecificOptions", self.game_specific_options)
        writer.write_enum_value("inputDevice", self.input_device)
        writer.write_object_value("lockedRules", self.locked_rules)
        writer.write_enum_value("mapPreferenceMode", self.map_preference_mode)
        writer.write_enum_value("mapSelectionType", self.map_selection_type)
        writer.write_enum_value("platform", self.platform)
        writer.write_enum_value("region", self.region)
        writer.write_collection_of_primitive_values("selectedMaps", self.selected_maps)
        writer.write_collection_of_primitive_values("selectedObjectives", self.selected_objectives)
        writer.write_additional_data_value(self.additional_data)
    

