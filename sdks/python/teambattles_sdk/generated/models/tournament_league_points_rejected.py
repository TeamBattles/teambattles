from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.api_error import APIError
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_placement_points_error import TournamentPlacementPointsError

@dataclass
class TournamentLeaguePointsRejected(APIError, Parsable):
    """
    A 400 from this endpoint. A superset of the standard Error body: `reason` adds a machine-readable placement-table reject code when that is what failed.
    """
    # The details property
    details: Optional[str] = None
    # The error property
    error: Optional[str] = None
    # Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
    reason: Optional[TournamentPlacementPointsError] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentLeaguePointsRejected:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentLeaguePointsRejected
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentLeaguePointsRejected()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_placement_points_error import TournamentPlacementPointsError

        from .tournament_placement_points_error import TournamentPlacementPointsError

        fields: dict[str, Callable[[Any], None]] = {
            "details": lambda n : setattr(self, 'details', n.get_str_value()),
            "error": lambda n : setattr(self, 'error', n.get_str_value()),
            "reason": lambda n : setattr(self, 'reason', n.get_enum_value(TournamentPlacementPointsError)),
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
        writer.write_str_value("details", self.details)
        writer.write_str_value("error", self.error)
        writer.write_enum_value("reason", self.reason)
    
    @property
    def primary_message(self) -> Optional[str]:
        """
        The primary error message.
        """
        return super().message

