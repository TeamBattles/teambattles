from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_roster_source import TournamentRosterSource

@dataclass
class MyTournamentRosterEntry(Parsable):
    """
    A tournament roster the caller is personally on.
    """
    # Time the caller was rostered (epoch milliseconds).
    added_at: Optional[float] = None
    # Participant whose roster the caller is on.
    participant_id: Optional[str] = None
    # Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
    roster_entry_id: Optional[str] = None
    # How a player reached a participant's tournament roster.
    source: Optional[TournamentRosterSource] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MyTournamentRosterEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MyTournamentRosterEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MyTournamentRosterEntry()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_roster_source import TournamentRosterSource

        from .tournament_roster_source import TournamentRosterSource

        fields: dict[str, Callable[[Any], None]] = {
            "addedAt": lambda n : setattr(self, 'added_at', n.get_float_value()),
            "participantId": lambda n : setattr(self, 'participant_id', n.get_str_value()),
            "rosterEntryId": lambda n : setattr(self, 'roster_entry_id', n.get_str_value()),
            "source": lambda n : setattr(self, 'source', n.get_enum_value(TournamentRosterSource)),
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
        writer.write_float_value("addedAt", self.added_at)
        writer.write_str_value("participantId", self.participant_id)
        writer.write_str_value("rosterEntryId", self.roster_entry_id)
        writer.write_enum_value("source", self.source)
    

