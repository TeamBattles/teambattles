from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_participant_team_avatar_url import TournamentParticipant_teamAvatarUrl
    from .tournament_roster_member import TournamentRosterMember

@dataclass
class TournamentParticipant(Parsable):
    """
    A team entered in a tournament.
    """
    # Check-in timestamp (epoch milliseconds).
    checked_in_at: Optional[float] = None
    # Placement persisted at finalization. Present only once the tournament ends.
    final_placement: Optional[int] = None
    # Participant ID.
    id: Optional[str] = None
    # Tournament roster.
    roster: Optional[list[TournamentRosterMember]] = None
    # Assigned seed, if seeding has run.
    seed: Optional[int] = None
    # PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
    status: Optional[str] = None
    # Team avatar URL.
    team_avatar_url: Optional[TournamentParticipant_teamAvatarUrl] = None
    # Team ID.
    team_id: Optional[str] = None
    # Team display name.
    team_name: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentParticipant:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentParticipant
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentParticipant()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_participant_team_avatar_url import TournamentParticipant_teamAvatarUrl
        from .tournament_roster_member import TournamentRosterMember

        from .tournament_participant_team_avatar_url import TournamentParticipant_teamAvatarUrl
        from .tournament_roster_member import TournamentRosterMember

        fields: dict[str, Callable[[Any], None]] = {
            "checkedInAt": lambda n : setattr(self, 'checked_in_at', n.get_float_value()),
            "finalPlacement": lambda n : setattr(self, 'final_placement', n.get_int_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "roster": lambda n : setattr(self, 'roster', n.get_collection_of_object_values(TournamentRosterMember)),
            "seed": lambda n : setattr(self, 'seed', n.get_int_value()),
            "status": lambda n : setattr(self, 'status', n.get_str_value()),
            "teamAvatarUrl": lambda n : setattr(self, 'team_avatar_url', n.get_object_value(TournamentParticipant_teamAvatarUrl)),
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
        writer.write_float_value("checkedInAt", self.checked_in_at)
        writer.write_int_value("finalPlacement", self.final_placement)
        writer.write_str_value("id", self.id)
        writer.write_collection_of_object_values("roster", self.roster)
        writer.write_int_value("seed", self.seed)
        writer.write_str_value("status", self.status)
        writer.write_object_value("teamAvatarUrl", self.team_avatar_url)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("teamName", self.team_name)
    

