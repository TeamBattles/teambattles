from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_calendar_event_kind import TournamentCalendarEvent_kind

@dataclass
class TournamentCalendarEvent(Parsable):
    """
    One dated tournament milestone for the key owner.
    """
    # Milestone time (epoch milliseconds).
    at: Optional[float] = None
    # registration = registration deadline, checkin = check-in opens, start = tournament start.
    kind: Optional[TournamentCalendarEvent_kind] = None
    # Tournament display name.
    name: Optional[str] = None
    # URL-friendly tournament identifier.
    slug: Optional[str] = None
    # Tournament ID.
    tournament_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentCalendarEvent:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentCalendarEvent
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentCalendarEvent()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_calendar_event_kind import TournamentCalendarEvent_kind

        from .tournament_calendar_event_kind import TournamentCalendarEvent_kind

        fields: dict[str, Callable[[Any], None]] = {
            "at": lambda n : setattr(self, 'at', n.get_float_value()),
            "kind": lambda n : setattr(self, 'kind', n.get_enum_value(TournamentCalendarEvent_kind)),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
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
        writer.write_float_value("at", self.at)
        writer.write_enum_value("kind", self.kind)
        writer.write_str_value("name", self.name)
        writer.write_str_value("slug", self.slug)
        writer.write_str_value("tournamentId", self.tournament_id)
    

