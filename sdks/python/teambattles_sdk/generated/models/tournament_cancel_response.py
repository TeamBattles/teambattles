from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_cancel_response_approval_status import TournamentCancelResponse_approvalStatus

@dataclass
class TournamentCancelResponse(Parsable):
    """
    Result of cancelling a tournament.
    """
    # The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
    approval_status: Optional[TournamentCancelResponse_approvalStatus] = None
    # The lifecycle status this call set.
    status: Optional[str] = None
    # The success property
    success: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentCancelResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentCancelResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentCancelResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_cancel_response_approval_status import TournamentCancelResponse_approvalStatus

        from .tournament_cancel_response_approval_status import TournamentCancelResponse_approvalStatus

        fields: dict[str, Callable[[Any], None]] = {
            "approvalStatus": lambda n : setattr(self, 'approval_status', n.get_enum_value(TournamentCancelResponse_approvalStatus)),
            "status": lambda n : setattr(self, 'status', n.get_str_value()),
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
        writer.write_enum_value("approvalStatus", self.approval_status)
        writer.write_str_value("status", self.status)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

