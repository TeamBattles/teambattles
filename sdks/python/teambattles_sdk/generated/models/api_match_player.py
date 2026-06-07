from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_player_attendance_status import ApiMatchPlayer_attendanceStatus
    from .api_match_player_avatar_url import ApiMatchPlayer_avatarUrl
    from .api_match_player_checked_in_at import ApiMatchPlayer_checkedInAt
    from .api_match_player_name import ApiMatchPlayer_name
    from .api_match_player_roster_type import ApiMatchPlayer_rosterType
    from .api_match_player_username import ApiMatchPlayer_username

@dataclass
class ApiMatchPlayer(Parsable):
    """
    Player row for a participant-gated match.
    """
    # The attendanceStatus property
    attendance_status: Optional[ApiMatchPlayer_attendanceStatus] = None
    # The avatarUrl property
    avatar_url: Optional[ApiMatchPlayer_avatarUrl] = None
    # The checkedInAt property
    checked_in_at: Optional[ApiMatchPlayer_checkedInAt] = None
    # The id property
    id: Optional[str] = None
    # The isCheckedIn property
    is_checked_in: Optional[bool] = None
    # The name property
    name: Optional[ApiMatchPlayer_name] = None
    # The rosterType property
    roster_type: Optional[ApiMatchPlayer_rosterType] = None
    # The teamId property
    team_id: Optional[str] = None
    # The userId property
    user_id: Optional[str] = None
    # The username property
    username: Optional[ApiMatchPlayer_username] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiMatchPlayer:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiMatchPlayer
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiMatchPlayer()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_player_attendance_status import ApiMatchPlayer_attendanceStatus
        from .api_match_player_avatar_url import ApiMatchPlayer_avatarUrl
        from .api_match_player_checked_in_at import ApiMatchPlayer_checkedInAt
        from .api_match_player_name import ApiMatchPlayer_name
        from .api_match_player_roster_type import ApiMatchPlayer_rosterType
        from .api_match_player_username import ApiMatchPlayer_username

        from .api_match_player_attendance_status import ApiMatchPlayer_attendanceStatus
        from .api_match_player_avatar_url import ApiMatchPlayer_avatarUrl
        from .api_match_player_checked_in_at import ApiMatchPlayer_checkedInAt
        from .api_match_player_name import ApiMatchPlayer_name
        from .api_match_player_roster_type import ApiMatchPlayer_rosterType
        from .api_match_player_username import ApiMatchPlayer_username

        fields: dict[str, Callable[[Any], None]] = {
            "attendanceStatus": lambda n : setattr(self, 'attendance_status', n.get_enum_value(ApiMatchPlayer_attendanceStatus)),
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiMatchPlayer_avatarUrl)),
            "checkedInAt": lambda n : setattr(self, 'checked_in_at', n.get_object_value(ApiMatchPlayer_checkedInAt)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isCheckedIn": lambda n : setattr(self, 'is_checked_in', n.get_bool_value()),
            "name": lambda n : setattr(self, 'name', n.get_object_value(ApiMatchPlayer_name)),
            "rosterType": lambda n : setattr(self, 'roster_type', n.get_enum_value(ApiMatchPlayer_rosterType)),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
            "username": lambda n : setattr(self, 'username', n.get_object_value(ApiMatchPlayer_username)),
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
        writer.write_enum_value("attendanceStatus", self.attendance_status)
        writer.write_object_value("avatarUrl", self.avatar_url)
        writer.write_object_value("checkedInAt", self.checked_in_at)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isCheckedIn", self.is_checked_in)
        writer.write_object_value("name", self.name)
        writer.write_enum_value("rosterType", self.roster_type)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("userId", self.user_id)
        writer.write_object_value("username", self.username)
