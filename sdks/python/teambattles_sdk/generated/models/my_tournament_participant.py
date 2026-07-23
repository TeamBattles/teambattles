from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_participant_status import TournamentParticipantStatus

@dataclass
class MyTournamentParticipant(Parsable):
    """
    One of the caller's teams entered in this tournament.
    """
    # Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
    can_manage: Optional[bool] = None
    # Check-in time (epoch milliseconds). Absent until the team checks in.
    checked_in_at: Optional[float] = None
    # Placement persisted at finalization. Present only once the tournament ends.
    final_placement: Optional[int] = None
    # Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
    participant_id: Optional[str] = None
    # Entry time (epoch milliseconds).
    registered_at: Optional[float] = None
    # Assigned seed, once seeding has run.
    seed: Optional[int] = None
    # State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
    status: Optional[TournamentParticipantStatus] = None
    # Team avatar URL.
    team_avatar_url: Optional[str] = None
    # Team ID.
    team_id: Optional[str] = None
    # Team display name.
    team_name: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MyTournamentParticipant:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MyTournamentParticipant
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MyTournamentParticipant()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_participant_status import TournamentParticipantStatus

        from .tournament_participant_status import TournamentParticipantStatus

        fields: dict[str, Callable[[Any], None]] = {
            "canManage": lambda n : setattr(self, 'can_manage', n.get_bool_value()),
            "checkedInAt": lambda n : setattr(self, 'checked_in_at', n.get_float_value()),
            "finalPlacement": lambda n : setattr(self, 'final_placement', n.get_int_value()),
            "participantId": lambda n : setattr(self, 'participant_id', n.get_str_value()),
            "registeredAt": lambda n : setattr(self, 'registered_at', n.get_float_value()),
            "seed": lambda n : setattr(self, 'seed', n.get_int_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentParticipantStatus)),
            "teamAvatarUrl": lambda n : setattr(self, 'team_avatar_url', n.get_str_value()),
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
        writer.write_bool_value("canManage", self.can_manage)
        writer.write_float_value("checkedInAt", self.checked_in_at)
        writer.write_int_value("finalPlacement", self.final_placement)
        writer.write_str_value("participantId", self.participant_id)
        writer.write_float_value("registeredAt", self.registered_at)
        writer.write_int_value("seed", self.seed)
        writer.write_enum_value("status", self.status)
        writer.write_str_value("teamAvatarUrl", self.team_avatar_url)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("teamName", self.team_name)
    

