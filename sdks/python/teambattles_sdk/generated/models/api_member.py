from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_member_joined_at import ApiMember_joinedAt
    from .api_user_profile import ApiUserProfile

@dataclass
class ApiMember(Parsable):
    """
    API-safe team or organization member.
    """
    # Membership row ID.
    id: Optional[str] = None
    # The joinedAt property
    joined_at: Optional[ApiMember_joinedAt] = None
    # Role label within the team or organization.
    role: Optional[str] = None
    # API-safe public user profile.
    user: Optional[ApiUserProfile] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiMember:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiMember
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiMember()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_member_joined_at import ApiMember_joinedAt
        from .api_user_profile import ApiUserProfile

        from .api_member_joined_at import ApiMember_joinedAt
        from .api_user_profile import ApiUserProfile

        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "joinedAt": lambda n : setattr(self, 'joined_at', n.get_object_value(ApiMember_joinedAt)),
            "role": lambda n : setattr(self, 'role', n.get_str_value()),
            "user": lambda n : setattr(self, 'user', n.get_object_value(ApiUserProfile)),
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
        writer.write_str_value("id", self.id)
        writer.write_object_value("joinedAt", self.joined_at)
        writer.write_str_value("role", self.role)
        writer.write_object_value("user", self.user)
