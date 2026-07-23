from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_application_team_avatar_url import TournamentApplication_teamAvatarUrl

@dataclass
class TournamentApplication(Parsable):
    """
    A team application awaiting organizer review.
    """
    # User who submitted the application, when recorded.
    applied_by_user_id: Optional[str] = None
    # Participant ID of the pending application.
    id: Optional[str] = None
    # Application time (epoch milliseconds).
    registered_at: Optional[float] = None
    # Applying team's avatar URL.
    team_avatar_url: Optional[TournamentApplication_teamAvatarUrl] = None
    # Applying team's ID.
    team_id: Optional[str] = None
    # Applying team's display name.
    team_name: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentApplication:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentApplication
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentApplication()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_application_team_avatar_url import TournamentApplication_teamAvatarUrl

        from .tournament_application_team_avatar_url import TournamentApplication_teamAvatarUrl

        fields: dict[str, Callable[[Any], None]] = {
            "appliedByUserId": lambda n : setattr(self, 'applied_by_user_id', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "registeredAt": lambda n : setattr(self, 'registered_at', n.get_float_value()),
            "teamAvatarUrl": lambda n : setattr(self, 'team_avatar_url', n.get_object_value(TournamentApplication_teamAvatarUrl)),
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
        writer.write_str_value("appliedByUserId", self.applied_by_user_id)
        writer.write_str_value("id", self.id)
        writer.write_float_value("registeredAt", self.registered_at)
        writer.write_object_value("teamAvatarUrl", self.team_avatar_url)
        writer.write_str_value("teamId", self.team_id)
        writer.write_str_value("teamName", self.team_name)
    

