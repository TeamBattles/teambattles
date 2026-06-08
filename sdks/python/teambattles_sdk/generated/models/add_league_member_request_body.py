from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .add_league_member_request_body_role import AddLeagueMemberRequestBody_role

@dataclass
class AddLeagueMemberRequestBody(AdditionalDataHolder, Parsable):
    """
    Adds or reactivates a league staff member.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Assignable league staff role. OWNER cannot be assigned through this API.
    role: Optional[AddLeagueMemberRequestBody_role] = None
    # User ID to add to league staff.
    user_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> AddLeagueMemberRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: AddLeagueMemberRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return AddLeagueMemberRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .add_league_member_request_body_role import AddLeagueMemberRequestBody_role

        from .add_league_member_request_body_role import AddLeagueMemberRequestBody_role

        fields: dict[str, Callable[[Any], None]] = {
            "role": lambda n : setattr(self, 'role', n.get_enum_value(AddLeagueMemberRequestBody_role)),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
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
        writer.write_enum_value("role", self.role)
        writer.write_str_value("userId", self.user_id)
        writer.write_additional_data_value(self.additional_data)
    

