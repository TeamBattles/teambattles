from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentCreateResponse(Parsable):
    """
    The newly created draft tournament.
    """
    # Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
    approval_status: Optional[str] = None
    # Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
    slug: Optional[str] = None
    # Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
    status: Optional[str] = None
    # The success property
    success: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    # The tournamentId property
    tournament_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentCreateResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentCreateResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentCreateResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "approvalStatus": lambda n : setattr(self, 'approval_status', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "status": lambda n : setattr(self, 'status', n.get_str_value()),
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
            "tournamentId": lambda n : setattr(self, 'tournament_id', n.get_str_value()),
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
        writer.write_str_value("slug", self.slug)
        writer.write_str_value("status", self.status)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
        writer.write_str_value("tournamentId", self.tournament_id)
    

