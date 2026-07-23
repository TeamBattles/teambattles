from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_invite_status import TournamentInviteStatus
    from .tournament_invite_team_avatar_url import TournamentInvite_teamAvatarUrl

@dataclass
class TournamentInvite(Parsable):
    """
    A team invite issued by the organizer.
    """
    # Invite time (epoch milliseconds).
    created_at: Optional[float] = None
    # Invite ID.
    id: Optional[str] = None
    # Organizer who sent the invite.
    invited_by_user_id: Optional[str] = None
    # Response time (epoch milliseconds). Absent while PENDING.
    responded_at: Optional[float] = None
    # State of a tournament team invite.
    status: Optional[TournamentInviteStatus] = None
    # Invited team's avatar URL.
    team_avatar_url: Optional[TournamentInvite_teamAvatarUrl] = None
    # Invited team's ID.
    team_id: Optional[str] = None
    # Invited team's display name.
    team_name: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentInvite:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentInvite
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentInvite()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_invite_status import TournamentInviteStatus
        from .tournament_invite_team_avatar_url import TournamentInvite_teamAvatarUrl

        from .tournament_invite_status import TournamentInviteStatus
        from .tournament_invite_team_avatar_url import TournamentInvite_teamAvatarUrl

        fields: dict[str, Callable[[Any], None]] = {
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "invitedByUserId": lambda n : setattr(self, 'invited_by_user_id', n.get_str_value()),
            "respondedAt": lambda n : setattr(self, 'responded_at', n.get_float_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentInviteStatus)),
            "teamAvatarUrl": lambda n : setattr(self, 'team_avatar_url', n.get_object_value(TournamentInvite_teamAvatarUrl)),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
            "teamName": lambda n : setattr(self, 'team_name', n.get_str_value()),
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
        writer.write_float_value("createdAt", self.created_at)
        writer.write_str_value("id", self.id)
        writer.write_str_value("invitedByUserId", self.invited_by_user_id)
        writer.write_float_value("respondedAt", self.responded_at)
        writer.write_enum_value("status", self.status)
        writer.write_object_value("teamAvatarUrl", self.team_avatar_url)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("teamName", self.team_name)
    

