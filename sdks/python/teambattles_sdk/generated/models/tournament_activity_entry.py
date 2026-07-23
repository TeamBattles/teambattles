from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_activity_actor import TournamentActivityActor
    from .tournament_activity_entry_metadata import TournamentActivityEntry_metadata

@dataclass
class TournamentActivityEntry(Parsable):
    """
    One tournament activity log entry.
    """
    # Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
    action: Optional[str] = None
    # The acting user, or null when the user row no longer resolves.
    actor: Optional[TournamentActivityActor] = None
    # Log time (epoch milliseconds).
    created_at: Optional[float] = None
    # Activity log row ID.
    id: Optional[str] = None
    # Action-specific detail. Shape varies by `action`.
    metadata: Optional[TournamentActivityEntry_metadata] = None
    # ID of the targeted row.
    target_id: Optional[str] = None
    # Kind of row the action targeted, when the action names one.
    target_type: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentActivityEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentActivityEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentActivityEntry()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_activity_actor import TournamentActivityActor
        from .tournament_activity_entry_metadata import TournamentActivityEntry_metadata

        from .tournament_activity_actor import TournamentActivityActor
        from .tournament_activity_entry_metadata import TournamentActivityEntry_metadata

        fields: dict[str, Callable[[Any], None]] = {
            "action": lambda n : setattr(self, 'action', n.get_str_value()),
            "actor": lambda n : setattr(self, 'actor', n.get_object_value(TournamentActivityActor)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_float_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "metadata": lambda n : setattr(self, 'metadata', n.get_object_value(TournamentActivityEntry_metadata)),
            "targetId": lambda n : setattr(self, 'target_id', n.get_str_value()),
            "targetType": lambda n : setattr(self, 'target_type', n.get_str_value()),
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
        writer.write_str_value("action", self.action)
        writer.write_object_value("actor", self.actor)
        writer.write_float_value("createdAt", self.created_at)
        writer.write_str_value("id", self.id)
        writer.write_object_value("metadata", self.metadata)
        writer.write_str_value("targetId", self.target_id)
        writer.write_str_value("targetType", self.target_type)
    

