from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_round_schedule_response_starts_at import TournamentRoundScheduleResponse_startsAt

@dataclass
class TournamentRoundScheduleResponse(Parsable):
    """
    Result of scheduling a tournament round.
    """
    # The roundId property
    round_id: Optional[str] = None
    # The value now stored on the round.
    starts_at: Optional[TournamentRoundScheduleResponse_startsAt] = None
    # The success property
    success: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentRoundScheduleResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentRoundScheduleResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentRoundScheduleResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_round_schedule_response_starts_at import TournamentRoundScheduleResponse_startsAt

        from .tournament_round_schedule_response_starts_at import TournamentRoundScheduleResponse_startsAt

        fields: dict[str, Callable[[Any], None]] = {
            "roundId": lambda n : setattr(self, 'round_id', n.get_str_value()),
            "startsAt": lambda n : setattr(self, 'starts_at', n.get_object_value(TournamentRoundScheduleResponse_startsAt)),
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
        writer.write_str_value("roundId", self.round_id)
        writer.write_object_value("startsAt", self.starts_at)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

