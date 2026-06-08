from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .update_attendance_request_body_status import UpdateAttendanceRequestBody_status

@dataclass
class UpdateAttendanceRequestBody(AdditionalDataHolder, Parsable):
    """
    Updates the API key owner's own attendance status for a match.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The API key owner's attendance status for this match.
    status: Optional[UpdateAttendanceRequestBody_status] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateAttendanceRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateAttendanceRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateAttendanceRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .update_attendance_request_body_status import UpdateAttendanceRequestBody_status

        from .update_attendance_request_body_status import UpdateAttendanceRequestBody_status

        fields: dict[str, Callable[[Any], None]] = {
            "status": lambda n : setattr(self, 'status', n.get_enum_value(UpdateAttendanceRequestBody_status)),
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
        writer.write_enum_value("status", self.status)
        writer.write_additional_data_value(self.additional_data)
    

