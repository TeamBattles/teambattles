from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_primary_stream import ApiPrimaryStream
    from .stream_platform import StreamPlatform

@dataclass
class ApiStreamStatus(Parsable):
    """
    API-safe live-stream status for a user.
    """
    # Whether the user is live on any platform.
    is_live: Optional[bool] = None
    # Platforms the user is currently live on.
    platforms: Optional[list[StreamPlatform]] = None
    # Primary stream details, or null when offline.
    primary_stream: Optional[ApiPrimaryStream] = None
    # User ID these stream details belong to.
    user_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiStreamStatus:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiStreamStatus
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiStreamStatus()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_primary_stream import ApiPrimaryStream
        from .stream_platform import StreamPlatform

        from .api_primary_stream import ApiPrimaryStream
        from .stream_platform import StreamPlatform

        fields: dict[str, Callable[[Any], None]] = {
            "isLive": lambda n : setattr(self, 'is_live', n.get_bool_value()),
            "platforms": lambda n : setattr(self, 'platforms', n.get_collection_of_enum_values(StreamPlatform)),
            "primaryStream": lambda n : setattr(self, 'primary_stream', n.get_object_value(ApiPrimaryStream)),
            "userId": lambda n : setattr(self, 'user_id', n.get_str_value()),
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
        writer.write_bool_value("isLive", self.is_live)
        writer.write_collection_of_enum_values("platforms", self.platforms)
        writer.write_object_value("primaryStream", self.primary_stream)
        writer.write_str_value("userId", self.user_id)
    

