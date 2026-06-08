from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_primary_stream_game_name import ApiPrimaryStream_gameName
    from .api_primary_stream_last_live_at import ApiPrimaryStream_lastLiveAt
    from .api_primary_stream_started_at import ApiPrimaryStream_startedAt
    from .api_primary_stream_stream_url import ApiPrimaryStream_streamUrl
    from .api_primary_stream_thumbnail_url import ApiPrimaryStream_thumbnailUrl
    from .api_primary_stream_title import ApiPrimaryStream_title
    from .api_primary_stream_viewer_count import ApiPrimaryStream_viewerCount
    from .stream_platform import StreamPlatform

@dataclass
class ApiPrimaryStream(Parsable):
    """
    The user's primary (highest-viewer) live stream.
    """
    # Game/category being streamed, when known.
    game_name: Optional[ApiPrimaryStream_gameName] = None
    # ISO timestamp the user was last observed live, when known.
    last_live_at: Optional[ApiPrimaryStream_lastLiveAt] = None
    # Supported streaming platform.
    platform: Optional[StreamPlatform] = None
    # Stream start time (platform-provided ISO timestamp), when known.
    started_at: Optional[ApiPrimaryStream_startedAt] = None
    # Watch URL, when known.
    stream_url: Optional[ApiPrimaryStream_streamUrl] = None
    # Stream thumbnail URL, when known.
    thumbnail_url: Optional[ApiPrimaryStream_thumbnailUrl] = None
    # Stream title, when known.
    title: Optional[ApiPrimaryStream_title] = None
    # Current viewer count, when known.
    viewer_count: Optional[ApiPrimaryStream_viewerCount] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiPrimaryStream:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiPrimaryStream
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiPrimaryStream()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_primary_stream_game_name import ApiPrimaryStream_gameName
        from .api_primary_stream_last_live_at import ApiPrimaryStream_lastLiveAt
        from .api_primary_stream_started_at import ApiPrimaryStream_startedAt
        from .api_primary_stream_stream_url import ApiPrimaryStream_streamUrl
        from .api_primary_stream_thumbnail_url import ApiPrimaryStream_thumbnailUrl
        from .api_primary_stream_title import ApiPrimaryStream_title
        from .api_primary_stream_viewer_count import ApiPrimaryStream_viewerCount
        from .stream_platform import StreamPlatform

        from .api_primary_stream_game_name import ApiPrimaryStream_gameName
        from .api_primary_stream_last_live_at import ApiPrimaryStream_lastLiveAt
        from .api_primary_stream_started_at import ApiPrimaryStream_startedAt
        from .api_primary_stream_stream_url import ApiPrimaryStream_streamUrl
        from .api_primary_stream_thumbnail_url import ApiPrimaryStream_thumbnailUrl
        from .api_primary_stream_title import ApiPrimaryStream_title
        from .api_primary_stream_viewer_count import ApiPrimaryStream_viewerCount
        from .stream_platform import StreamPlatform

        fields: dict[str, Callable[[Any], None]] = {
            "gameName": lambda n : setattr(self, 'game_name', n.get_object_value(ApiPrimaryStream_gameName)),
            "lastLiveAt": lambda n : setattr(self, 'last_live_at', n.get_object_value(ApiPrimaryStream_lastLiveAt)),
            "platform": lambda n : setattr(self, 'platform', n.get_enum_value(StreamPlatform)),
            "startedAt": lambda n : setattr(self, 'started_at', n.get_object_value(ApiPrimaryStream_startedAt)),
            "streamUrl": lambda n : setattr(self, 'stream_url', n.get_object_value(ApiPrimaryStream_streamUrl)),
            "thumbnailUrl": lambda n : setattr(self, 'thumbnail_url', n.get_object_value(ApiPrimaryStream_thumbnailUrl)),
            "title": lambda n : setattr(self, 'title', n.get_object_value(ApiPrimaryStream_title)),
            "viewerCount": lambda n : setattr(self, 'viewer_count', n.get_object_value(ApiPrimaryStream_viewerCount)),
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
        writer.write_object_value("gameName", self.game_name)
        writer.write_object_value("lastLiveAt", self.last_live_at)
        writer.write_enum_value("platform", self.platform)
        writer.write_object_value("startedAt", self.started_at)
        writer.write_object_value("streamUrl", self.stream_url)
        writer.write_object_value("thumbnailUrl", self.thumbnail_url)
        writer.write_object_value("title", self.title)
        writer.write_object_value("viewerCount", self.viewer_count)
    

