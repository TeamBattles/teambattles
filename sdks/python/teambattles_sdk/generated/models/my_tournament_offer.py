from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_free_agent_offer_status import TournamentFreeAgentOfferStatus
    from .tournament_participant_status import TournamentParticipantStatus

@dataclass
class MyTournamentOffer(Parsable):
    """
    A free-agent offer addressed to the caller, in every state.
    """
    # Offer time (epoch milliseconds).
    created_at: Optional[float] = None
    # Optional note from the offering team.
    message: Optional[str] = None
    # Offer ID. Required by the offer-respond and offer-revoke endpoints.
    offer_id: Optional[str] = None
    # The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
    offering_participant_status: Optional[TournamentParticipantStatus] = None
    # Offering team's participant ID.
    participant_id: Optional[str] = None
    # State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
    status: Optional[TournamentFreeAgentOfferStatus] = None
    # Offering team's avatar URL.
    team_avatar_url: Optional[str] = None
    # Offering team's ID.
    team_id: Optional[str] = None
    # Offering team's display name.
    team_name: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MyTournamentOffer:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MyTournamentOffer
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MyTournamentOffer()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_free_agent_offer_status import TournamentFreeAgentOfferStatus
        from .tournament_participant_status import TournamentParticipantStatus

        from .tournament_free_agent_offer_status import TournamentFreeAgentOfferStatus
        from .tournament_participant_status import TournamentParticipantStatus

        fields: dict[str, Callable[[Any], None]] = {
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "message": lambda n : setattr(self, 'message', n.get_str_value()),
            "offerId": lambda n : setattr(self, 'offer_id', n.get_str_value()),
            "offeringParticipantStatus": lambda n : setattr(self, 'offering_participant_status', n.get_enum_value(TournamentParticipantStatus)),
            "participantId": lambda n : setattr(self, 'participant_id', n.get_str_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentFreeAgentOfferStatus)),
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
        writer.write_float_value("createdAt", self.created_at)
        writer.write_str_value("message", self.message)
        writer.write_str_value("offerId", self.offer_id)
        writer.write_enum_value("offeringParticipantStatus", self.offering_participant_status)
        writer.write_str_value("participantId", self.participant_id)
        writer.write_enum_value("status", self.status)
        writer.write_str_value("teamAvatarUrl", self.team_avatar_url)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("teamName", self.team_name)
    

