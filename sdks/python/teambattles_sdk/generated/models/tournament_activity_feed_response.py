from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_activity_entry import TournamentActivityEntry

@dataclass
class TournamentActivityFeedResponse(Parsable):
    """
    The tournament organizer activity feed.
    """
    # Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
    activities: Optional[list[TournamentActivityEntry]] = None
    # Number of entries returned.
    count: Optional[int] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentActivityFeedResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentActivityFeedResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentActivityFeedResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_activity_entry import TournamentActivityEntry

        from .tournament_activity_entry import TournamentActivityEntry

        fields: dict[str, Callable[[Any], None]] = {
            "activities": lambda n : setattr(self, 'activities', n.get_collection_of_object_values(TournamentActivityEntry)),
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
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
        writer.write_collection_of_object_values("activities", self.activities)
        writer.write_int_value("count", self.count)
        writer.write_str_value("timestamp", self.timestamp)
    

