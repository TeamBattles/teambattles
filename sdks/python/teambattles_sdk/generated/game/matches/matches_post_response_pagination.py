from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .matches_post_response_pagination_cursor import MatchesPostResponse_pagination_cursor

@dataclass
class MatchesPostResponse_pagination(Parsable):
    # The cursor property
    cursor: Optional[MatchesPostResponse_pagination_cursor] = None
    # The hasMore property
    has_more: Optional[bool] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MatchesPostResponse_pagination:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MatchesPostResponse_pagination
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MatchesPostResponse_pagination()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .matches_post_response_pagination_cursor import MatchesPostResponse_pagination_cursor

        from .matches_post_response_pagination_cursor import MatchesPostResponse_pagination_cursor

        fields: dict[str, Callable[[Any], None]] = {
            "cursor": lambda n : setattr(self, 'cursor', n.get_object_value(MatchesPostResponse_pagination_cursor)),
            "hasMore": lambda n : setattr(self, 'has_more', n.get_bool_value()),
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
        writer.write_object_value("cursor", self.cursor)
        writer.write_bool_value("hasMore", self.has_more)
    

