from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .twitch_recorded_stream_removed_at_member1 import TwitchRecordedStream_removed_atMember1

@dataclass
class TwitchRecordedStream_removed_at(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes str, TwitchRecordedStream_removed_atMember1
    """
    # Composed type representation for type str
    string: Optional[str] = None
    # Composed type representation for type TwitchRecordedStream_removed_atMember1
    twitch_recorded_stream_removed_at_member1: Optional[TwitchRecordedStream_removed_atMember1] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchRecordedStream_removed_at:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchRecordedStream_removed_at
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = TwitchRecordedStream_removed_at()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .twitch_recorded_stream_removed_at_member1 import TwitchRecordedStream_removed_atMember1

            result.twitch_recorded_stream_removed_at_member1 = TwitchRecordedStream_removed_atMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .twitch_recorded_stream_removed_at_member1 import TwitchRecordedStream_removed_atMember1

        if self.twitch_recorded_stream_removed_at_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.twitch_recorded_stream_removed_at_member1)
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
            writer.write_object_value(None, self.twitch_recorded_stream_removed_at_member1)
    

