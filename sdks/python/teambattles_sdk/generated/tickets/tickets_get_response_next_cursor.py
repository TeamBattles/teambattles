from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tickets_get_response_next_cursor_member1 import TicketsGetResponse_nextCursorMember1

@dataclass
class TicketsGetResponse_nextCursor(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes str, TicketsGetResponse_nextCursorMember1
    """
    # Composed type representation for type str
    string: Optional[str] = None
    # Composed type representation for type TicketsGetResponse_nextCursorMember1
    tickets_get_response_next_cursor_member1: Optional[TicketsGetResponse_nextCursorMember1] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TicketsGetResponse_nextCursor:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TicketsGetResponse_nextCursor
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = TicketsGetResponse_nextCursor()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .tickets_get_response_next_cursor_member1 import TicketsGetResponse_nextCursorMember1

            result.tickets_get_response_next_cursor_member1 = TicketsGetResponse_nextCursorMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tickets_get_response_next_cursor_member1 import TicketsGetResponse_nextCursorMember1

        if self.tickets_get_response_next_cursor_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.tickets_get_response_next_cursor_member1)
        return {}
    
    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        if self.string:
            writer.write_str_value(None, self.string)
        else:
            writer.write_object_value(None, self.tickets_get_response_next_cursor_member1)
    

