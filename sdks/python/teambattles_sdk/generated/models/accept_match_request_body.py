from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .accept_match_request_body_bench_roster import AcceptMatchRequestBody_benchRoster
    from .accept_match_request_body_disputed_rules import AcceptMatchRequestBody_disputedRules
    from .accept_match_request_body_map_preference_mode import AcceptMatchRequestBody_mapPreferenceMode

@dataclass
class AcceptMatchRequestBody(AdditionalDataHolder, Parsable):
    """
    Creates a match acceptance request as the API key owner.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Active roster user IDs for the acceptance request.
    active_roster: Optional[list[str]] = None
    # Optional bench roster users.
    bench_roster: Optional[list[AcceptMatchRequestBody_benchRoster]] = None
    # Optional proposed rule changes.
    disputed_rules: Optional[AcceptMatchRequestBody_disputedRules] = None
    # Optional map preference mode for selected maps.
    map_preference_mode: Optional[AcceptMatchRequestBody_mapPreferenceMode] = None
    # Optional message for the match creator.
    message: Optional[str] = None
    # Optional proposed map IDs.
    selected_maps: Optional[list[str]] = None
    # Team ID accepting the match.
    team_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> AcceptMatchRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: AcceptMatchRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return AcceptMatchRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .accept_match_request_body_bench_roster import AcceptMatchRequestBody_benchRoster
        from .accept_match_request_body_disputed_rules import AcceptMatchRequestBody_disputedRules
        from .accept_match_request_body_map_preference_mode import AcceptMatchRequestBody_mapPreferenceMode

        from .accept_match_request_body_bench_roster import AcceptMatchRequestBody_benchRoster
        from .accept_match_request_body_disputed_rules import AcceptMatchRequestBody_disputedRules
        from .accept_match_request_body_map_preference_mode import AcceptMatchRequestBody_mapPreferenceMode

        fields: dict[str, Callable[[Any], None]] = {
            "activeRoster": lambda n : setattr(self, 'active_roster', n.get_collection_of_primitive_values(str)),
            "benchRoster": lambda n : setattr(self, 'bench_roster', n.get_collection_of_object_values(AcceptMatchRequestBody_benchRoster)),
            "disputedRules": lambda n : setattr(self, 'disputed_rules', n.get_object_value(AcceptMatchRequestBody_disputedRules)),
            "mapPreferenceMode": lambda n : setattr(self, 'map_preference_mode', n.get_enum_value(AcceptMatchRequestBody_mapPreferenceMode)),
            "message": lambda n : setattr(self, 'message', n.get_str_value()),
            "selectedMaps": lambda n : setattr(self, 'selected_maps', n.get_collection_of_primitive_values(str)),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
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
        writer.write_object_value("disputedRules", self.disputed_rules)
        writer.write_enum_value("mapPreferenceMode", self.map_preference_mode)
        writer.write_str_value("message", self.message)
        writer.write_collection_of_primitive_values("selectedMaps", self.selected_maps)
        writer.write_str_value("teamId", self.team_id)
        writer.write_additional_data_value(self.additional_data)
    

