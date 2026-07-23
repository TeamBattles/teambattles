from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_submit_for_approval_response_approval_status import TournamentSubmitForApprovalResponse_approvalStatus

@dataclass
class TournamentSubmitForApprovalResponse(Parsable):
    """
    Result of submitting a draft tournament for staff review.
    """
    # The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
    approval_status: Optional[TournamentSubmitForApprovalResponse_approvalStatus] = None
    # True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
    auto_approved: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentSubmitForApprovalResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentSubmitForApprovalResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentSubmitForApprovalResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_submit_for_approval_response_approval_status import TournamentSubmitForApprovalResponse_approvalStatus

        from .tournament_submit_for_approval_response_approval_status import TournamentSubmitForApprovalResponse_approvalStatus

        fields: dict[str, Callable[[Any], None]] = {
            "approvalStatus": lambda n : setattr(self, 'approval_status', n.get_enum_value(TournamentSubmitForApprovalResponse_approvalStatus)),
            "autoApproved": lambda n : setattr(self, 'auto_approved', n.get_bool_value()),
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
        writer.write_bool_value("autoApproved", self.auto_approved)
        writer.write_str_value("timestamp", self.timestamp)
    

