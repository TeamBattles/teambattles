from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_staff_member_avatar_url import TournamentStaffMember_avatarUrl
    from .tournament_staff_role import TournamentStaffRole

@dataclass
class TournamentStaffMember(Parsable):
    """
    One tournament staff assignment.
    """
    # Avatar image URL.
    avatar_url: Optional[TournamentStaffMember_avatarUrl] = None
    # Time the row was added (epoch milliseconds).
    created_at: Optional[float] = None
    # Staff row ID.
    id: Optional[str] = None
    # Display name.
    name: Optional[str] = None
    # Tournament staff role.
    role: Optional[TournamentStaffRole] = None
    # Staff member's user ID.
    user_id: Optional[str] = None
    # Username.
    username: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentStaffMember:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentStaffMember
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentStaffMember()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_staff_member_avatar_url import TournamentStaffMember_avatarUrl
        from .tournament_staff_role import TournamentStaffRole

        from .tournament_staff_member_avatar_url import TournamentStaffMember_avatarUrl
        from .tournament_staff_role import TournamentStaffRole

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(TournamentStaffMember_avatarUrl)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "role": lambda n : setattr(self, 'role', n.get_enum_value(TournamentStaffRole)),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
            "username": lambda n : setattr(self, 'username', n.get_str_value()),
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
        writer.write_object_value("avatarUrl", self.avatar_url)
        writer.write_float_value("createdAt", self.created_at)
        writer.write_str_value("id", self.id)
        writer.write_str_value("name", self.name)
        writer.write_enum_value("role", self.role)
        writer.write_str_value("userId", self.user_id)
        writer.write_str_value("username", self.username)
    

