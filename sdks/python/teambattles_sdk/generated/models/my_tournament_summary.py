from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_status import TournamentStatus

@dataclass
class MyTournamentSummary(Parsable):
    """
    A tournament the API key owner can manage.
    """
    # Platform review state, independent of `status`.
    approval_status: Optional[str] = None
    # user, org, or league.
    host_type: Optional[str] = None
    # Tournament ID.
    id: Optional[str] = None
    # Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
    is_admin: Optional[bool] = None
    # Participant cap.
    max_participants: Optional[int] = None
    # Tournament display name.
    name: Optional[str] = None
    # Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
    needs_attention: Optional[bool] = None
    # Current number of participants.
    participant_count: Optional[int] = None
    # URL-friendly tournament identifier.
    slug: Optional[str] = None
    # Scheduled start (epoch milliseconds).
    starts_at: Optional[float] = None
    # Lifecycle status of a tournament.
    status: Optional[TournamentStatus] = None
    # Last update (epoch milliseconds).
    updated_at: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MyTournamentSummary:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MyTournamentSummary
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MyTournamentSummary()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_status import TournamentStatus

        from .tournament_status import TournamentStatus

        fields: dict[str, Callable[[Any], None]] = {
            "approvalStatus": lambda n : setattr(self, 'approval_status', n.get_str_value()),
            "hostType": lambda n : setattr(self, 'host_type', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isAdmin": lambda n : setattr(self, 'is_admin', n.get_bool_value()),
            "maxParticipants": lambda n : setattr(self, 'max_participants', n.get_int_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "needsAttention": lambda n : setattr(self, 'needs_attention', n.get_bool_value()),
            "participantCount": lambda n : setattr(self, 'participant_count', n.get_int_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "startsAt": lambda n : setattr(self, 'starts_at', n.get_float_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentStatus)),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_float_value()),
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
        writer.write_str_value("approvalStatus", self.approval_status)
        writer.write_str_value("hostType", self.host_type)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isAdmin", self.is_admin)
        writer.write_int_value("maxParticipants", self.max_participants)
        writer.write_str_value("name", self.name)
        writer.write_bool_value("needsAttention", self.needs_attention)
        writer.write_int_value("participantCount", self.participant_count)
        writer.write_str_value("slug", self.slug)
        writer.write_float_value("startsAt", self.starts_at)
        writer.write_enum_value("status", self.status)
        writer.write_float_value("updatedAt", self.updated_at)
    

