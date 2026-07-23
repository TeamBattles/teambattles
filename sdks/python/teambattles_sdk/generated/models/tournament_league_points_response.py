from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_league_points_response_placement_count import TournamentLeaguePointsResponse_placementCount

@dataclass
class TournamentLeaguePointsResponse(Parsable):
    """
    The league placement-points configuration now in effect.
    """
    # The leaguePointsEnabled property
    league_points_enabled: Optional[bool] = None
    # Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
    placement_count: Optional[TournamentLeaguePointsResponse_placementCount] = None
    # The success property
    success: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentLeaguePointsResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentLeaguePointsResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentLeaguePointsResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_league_points_response_placement_count import TournamentLeaguePointsResponse_placementCount

        from .tournament_league_points_response_placement_count import TournamentLeaguePointsResponse_placementCount

        fields: dict[str, Callable[[Any], None]] = {
            "leaguePointsEnabled": lambda n : setattr(self, 'league_points_enabled', n.get_bool_value()),
            "placementCount": lambda n : setattr(self, 'placement_count', n.get_object_value(TournamentLeaguePointsResponse_placementCount)),
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
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
        writer.write_bool_value("leaguePointsEnabled", self.league_points_enabled)
        writer.write_object_value("placementCount", self.placement_count)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

