from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_round_schedule_request_body_starts_at import TournamentRoundScheduleRequestBody_startsAt

@dataclass
class TournamentRoundScheduleRequestBody(AdditionalDataHolder, Parsable):
    """
    Round schedule payload.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
    starts_at: Optional[TournamentRoundScheduleRequestBody_startsAt] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentRoundScheduleRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentRoundScheduleRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentRoundScheduleRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_round_schedule_request_body_starts_at import TournamentRoundScheduleRequestBody_startsAt

        from .tournament_round_schedule_request_body_starts_at import TournamentRoundScheduleRequestBody_startsAt

        fields: dict[str, Callable[[Any], None]] = {
            "startsAt": lambda n : setattr(self, 'starts_at', n.get_object_value(TournamentRoundScheduleRequestBody_startsAt)),
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
        writer.write_object_value("startsAt", self.starts_at)
        writer.write_additional_data_value(self.additional_data)
    

