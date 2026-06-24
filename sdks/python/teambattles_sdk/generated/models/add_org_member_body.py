from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .add_org_member_body_role import AddOrgMemberBody_role

@dataclass
class AddOrgMemberBody(AdditionalDataHolder, Parsable):
    """
    Add a member to the organization.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The role to assign to the new member. Ownership is set on creation.
    role: Optional[AddOrgMemberBody_role] = None
    # Convex user ID of the member to add.
    target_user_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> AddOrgMemberBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: AddOrgMemberBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return AddOrgMemberBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .add_org_member_body_role import AddOrgMemberBody_role

        from .add_org_member_body_role import AddOrgMemberBody_role

        fields: dict[str, Callable[[Any], None]] = {
            "role": lambda n : setattr(self, 'role', n.get_enum_value(AddOrgMemberBody_role)),
            "targetUserId": lambda n : setattr(self, 'target_user_id', n.get_str_value()),
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
        writer.write_str_value("targetUserId", self.target_user_id)
        writer.write_additional_data_value(self.additional_data)
    

