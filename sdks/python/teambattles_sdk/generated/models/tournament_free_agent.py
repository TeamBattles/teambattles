from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_free_agent_avatar_url import TournamentFreeAgent_avatarUrl
    from .tournament_free_agent_viewer_offer_status import TournamentFreeAgent_viewerOfferStatus

@dataclass
class TournamentFreeAgent(Parsable):
    """
    An available free agent.
    """
    # Avatar image URL.
    avatar_url: Optional[TournamentFreeAgent_avatarUrl] = None
    # Pool join time (epoch milliseconds).
    created_at: Optional[float] = None
    # Free-agent row ID.
    id: Optional[str] = None
    # Display name.
    name: Optional[str] = None
    # Free-text note the agent supplied.
    note: Optional[str] = None
    # User ID of the free agent.
    user_id: Optional[str] = None
    # Username.
    username: Optional[str] = None
    # PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
    viewer_offer_status: Optional[TournamentFreeAgent_viewerOfferStatus] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentFreeAgent:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentFreeAgent
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentFreeAgent()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_free_agent_avatar_url import TournamentFreeAgent_avatarUrl
        from .tournament_free_agent_viewer_offer_status import TournamentFreeAgent_viewerOfferStatus

        from .tournament_free_agent_avatar_url import TournamentFreeAgent_avatarUrl
        from .tournament_free_agent_viewer_offer_status import TournamentFreeAgent_viewerOfferStatus

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(TournamentFreeAgent_avatarUrl)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "note": lambda n : setattr(self, 'note', n.get_str_value()),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
            "username": lambda n : setattr(self, 'username', n.get_str_value()),
            "viewerOfferStatus": lambda n : setattr(self, 'viewer_offer_status', n.get_object_value(TournamentFreeAgent_viewerOfferStatus)),
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
        writer.write_str_value("note", self.note)
        writer.write_str_value("userId", self.user_id)
        writer.write_str_value("username", self.username)
        writer.write_object_value("viewerOfferStatus", self.viewer_offer_status)
    

