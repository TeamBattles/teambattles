from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_calendar_event import TournamentCalendarEvent

@dataclass
class TournamentCalendarResponse(Parsable):
    """
    Tournament milestones for the key owner's teams.
    """
    # Number of milestones returned.
    count: Optional[int] = None
    # Milestones in the requested window, ascending by time.
    events: Optional[list[TournamentCalendarEvent]] = None
    # Applied window end (ISO 8601).
    range_end: Optional[str] = None
    # Applied window start (ISO 8601).
    range_start: Optional[str] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentCalendarResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentCalendarResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentCalendarResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_calendar_event import TournamentCalendarEvent

        from .tournament_calendar_event import TournamentCalendarEvent

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "events": lambda n : setattr(self, 'events', n.get_collection_of_object_values(TournamentCalendarEvent)),
            "rangeEnd": lambda n : setattr(self, 'range_end', n.get_str_value()),
            "rangeStart": lambda n : setattr(self, 'range_start', n.get_str_value()),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
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
        writer.write_int_value("count", self.count)
        writer.write_collection_of_object_values("events", self.events)
        writer.write_str_value("rangeEnd", self.range_end)
        writer.write_str_value("rangeStart", self.range_start)
        writer.write_str_value("timestamp", self.timestamp)
    

