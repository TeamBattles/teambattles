from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_placement_points_entry import TournamentPlacementPointsEntry

@dataclass
class TournamentLeaguePointsRequestBody(AdditionalDataHolder, Parsable):
    """
    League placement-points configuration.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
    league_points_by_placement: Optional[list[TournamentPlacementPointsEntry]] = None
    # Whether finishing this tournament awards league points to the league season.
    league_points_enabled: Optional[bool] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentLeaguePointsRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentLeaguePointsRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentLeaguePointsRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_placement_points_entry import TournamentPlacementPointsEntry

        from .tournament_placement_points_entry import TournamentPlacementPointsEntry

        fields: dict[str, Callable[[Any], None]] = {
            "leaguePointsByPlacement": lambda n : setattr(self, 'league_points_by_placement', n.get_collection_of_object_values(TournamentPlacementPointsEntry)),
            "leaguePointsEnabled": lambda n : setattr(self, 'league_points_enabled', n.get_bool_value()),
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
        writer.write_collection_of_object_values("leaguePointsByPlacement", self.league_points_by_placement)
        writer.write_bool_value("leaguePointsEnabled", self.league_points_enabled)
        writer.write_additional_data_value(self.additional_data)
    

