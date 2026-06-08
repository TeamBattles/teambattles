from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .stream_platform import StreamPlatform

@dataclass
class ApiBatchStreamStatus(Parsable):
    """
    Compact live-status row returned by the batch endpoint.
    """
    # User ID.
    id: Optional[str] = None
    # The isLive property
    is_live: Optional[bool] = None
    # The platforms property
    platforms: Optional[list[StreamPlatform]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiBatchStreamStatus:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiBatchStreamStatus
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiBatchStreamStatus()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .stream_platform import StreamPlatform

        from .stream_platform import StreamPlatform

        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isLive": lambda n : setattr(self, 'is_live', n.get_bool_value()),
            "platforms": lambda n : setattr(self, 'platforms', n.get_collection_of_enum_values(StreamPlatform)),
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
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isLive", self.is_live)
        writer.write_collection_of_enum_values("platforms", self.platforms)
    

