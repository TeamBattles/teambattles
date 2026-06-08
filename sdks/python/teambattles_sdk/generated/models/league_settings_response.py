from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_settings_response_league import LeagueSettingsResponse_league

@dataclass
class LeagueSettingsResponse(Parsable):
    """
    Full league settings visible to league admins.
    """
    # The league property
    league: Optional[LeagueSettingsResponse_league] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueSettingsResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueSettingsResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueSettingsResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_settings_response_league import LeagueSettingsResponse_league

        from .league_settings_response_league import LeagueSettingsResponse_league

        fields: dict[str, Callable[[Any], None]] = {
            "league": lambda n : setattr(self, 'league', n.get_object_value(LeagueSettingsResponse_league)),
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
        writer.write_object_value("league", self.league)
        writer.write_str_value("timestamp", self.timestamp)
    

