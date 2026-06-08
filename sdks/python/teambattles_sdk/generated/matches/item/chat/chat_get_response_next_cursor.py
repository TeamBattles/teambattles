from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .chat_get_response_next_cursor_member1 import ChatGetResponse_nextCursorMember1

@dataclass
class ChatGetResponse_nextCursor(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes ChatGetResponse_nextCursorMember1, str
    """
    # Composed type representation for type ChatGetResponse_nextCursorMember1
    chat_get_response_next_cursor_member1: Optional[ChatGetResponse_nextCursorMember1] = None
    # Composed type representation for type str
    string: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ChatGetResponse_nextCursor:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ChatGetResponse_nextCursor
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = ChatGetResponse_nextCursor()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .chat_get_response_next_cursor_member1 import ChatGetResponse_nextCursorMember1

            result.chat_get_response_next_cursor_member1 = ChatGetResponse_nextCursorMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .chat_get_response_next_cursor_member1 import ChatGetResponse_nextCursorMember1

        if self.chat_get_response_next_cursor_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.chat_get_response_next_cursor_member1)
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
            writer.write_object_value(None, self.chat_get_response_next_cursor_member1)
    

