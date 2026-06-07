from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_detail import ApiMatchDetail
    from .match_discover_page_next_cursor import MatchDiscoverPage_nextCursor

@dataclass
class MatchDiscoverPage(Parsable):
    """
    SP-2 open-match discovery page.
    """
    # The data property
    data: Optional[list[ApiMatchDetail]] = None
    # The hasMore property
    has_more: Optional[bool] = None
    # The nextCursor property
    next_cursor: Optional[MatchDiscoverPage_nextCursor] = None
    # The timestamp property
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MatchDiscoverPage:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MatchDiscoverPage
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MatchDiscoverPage()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_detail import ApiMatchDetail
        from .match_discover_page_next_cursor import MatchDiscoverPage_nextCursor

        from .api_match_detail import ApiMatchDetail
        from .match_discover_page_next_cursor import MatchDiscoverPage_nextCursor

        fields: dict[str, Callable[[Any], None]] = {
            "data": lambda n : setattr(self, 'data', n.get_collection_of_object_values(ApiMatchDetail)),
            "hasMore": lambda n : setattr(self, 'has_more', n.get_bool_value()),
            "nextCursor": lambda n : setattr(self, 'next_cursor', n.get_object_value(MatchDiscoverPage_nextCursor)),
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
        writer.write_collection_of_object_values("data", self.data)
        writer.write_bool_value("hasMore", self.has_more)
        writer.write_object_value("nextCursor", self.next_cursor)
        writer.write_str_value("timestamp", self.timestamp)
