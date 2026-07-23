from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_material_field import TournamentMaterialField
    from .tournament_update_response_applied import TournamentUpdateResponse_applied
    from .tournament_update_response_approval_status import TournamentUpdateResponse_approvalStatus

@dataclass
class TournamentUpdateResponse(Parsable):
    """
    Tri-state result of a tournament edit.
    """
    # `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
    applied: Optional[TournamentUpdateResponse_applied] = None
    # Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
    approval_status: Optional[TournamentUpdateResponse_approvalStatus] = None
    # Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
    changed_fields: Optional[list[TournamentMaterialField]] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentUpdateResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentUpdateResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentUpdateResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_material_field import TournamentMaterialField
        from .tournament_update_response_applied import TournamentUpdateResponse_applied
        from .tournament_update_response_approval_status import TournamentUpdateResponse_approvalStatus

        from .tournament_material_field import TournamentMaterialField
        from .tournament_update_response_applied import TournamentUpdateResponse_applied
        from .tournament_update_response_approval_status import TournamentUpdateResponse_approvalStatus

        fields: dict[str, Callable[[Any], None]] = {
            "applied": lambda n : setattr(self, 'applied', n.get_enum_value(TournamentUpdateResponse_applied)),
            "approvalStatus": lambda n : setattr(self, 'approval_status', n.get_enum_value(TournamentUpdateResponse_approvalStatus)),
            "changedFields": lambda n : setattr(self, 'changed_fields', n.get_collection_of_enum_values(TournamentMaterialField)),
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
        writer.write_enum_value("applied", self.applied)
        writer.write_enum_value("approvalStatus", self.approval_status)
        writer.write_collection_of_enum_values("changedFields", self.changed_fields)
        writer.write_str_value("timestamp", self.timestamp)
    

