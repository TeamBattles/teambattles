from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .twitch_recorded_stream_ended_at import TwitchRecordedStream_ended_at
    from .twitch_recorded_stream_game import TwitchRecordedStream_game
    from .twitch_recorded_stream_host import TwitchRecordedStream_host
    from .twitch_recorded_stream_path_timestamp import TwitchRecordedStream_path_timestamp
    from .twitch_recorded_stream_recording import TwitchRecordedStream_recording
    from .twitch_recorded_stream_removed_at import TwitchRecordedStream_removed_at
    from .twitch_recorded_stream_title import TwitchRecordedStream_title

@dataclass
class TwitchRecordedStream(Parsable):
    """
    One recorded Twitch stream.
    """
    # Seconds from the start to the end, or to when it was last seen live.
    duration_seconds: Optional[int] = None
    # Stream end (ISO 8601); null while it was still live at the last pass.
    ended_at: Optional[TwitchRecordedStream_ended_at] = None
    # Category name, when Twitch reported one.
    game: Optional[TwitchRecordedStream_game] = None
    # CDN host the recording was found on; null unless recording is available.
    host: Optional[TwitchRecordedStream_host] = None
    # Channel login when the stream ran; part of the recording path.
    login: Optional[str] = None
    # Unix second used in the recording path; null unless recording is available.
    path_timestamp: Optional[TwitchRecordedStream_path_timestamp] = None
    # available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
    recording: Optional[TwitchRecordedStream_recording] = None
    # When the recording was found removed (ISO 8601), else null.
    removed_at: Optional[TwitchRecordedStream_removed_at] = None
    # Stream start (ISO 8601).
    started_at: Optional[str] = None
    # Twitch stream (broadcast) id.
    stream_id: Optional[str] = None
    # Stream title, when Twitch reported one.
    title: Optional[TwitchRecordedStream_title] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchRecordedStream:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchRecordedStream
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TwitchRecordedStream()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .twitch_recorded_stream_ended_at import TwitchRecordedStream_ended_at
        from .twitch_recorded_stream_game import TwitchRecordedStream_game
        from .twitch_recorded_stream_host import TwitchRecordedStream_host
        from .twitch_recorded_stream_path_timestamp import TwitchRecordedStream_path_timestamp
        from .twitch_recorded_stream_recording import TwitchRecordedStream_recording
        from .twitch_recorded_stream_removed_at import TwitchRecordedStream_removed_at
        from .twitch_recorded_stream_title import TwitchRecordedStream_title

        from .twitch_recorded_stream_ended_at import TwitchRecordedStream_ended_at
        from .twitch_recorded_stream_game import TwitchRecordedStream_game
        from .twitch_recorded_stream_host import TwitchRecordedStream_host
        from .twitch_recorded_stream_path_timestamp import TwitchRecordedStream_path_timestamp
        from .twitch_recorded_stream_recording import TwitchRecordedStream_recording
        from .twitch_recorded_stream_removed_at import TwitchRecordedStream_removed_at
        from .twitch_recorded_stream_title import TwitchRecordedStream_title

        fields: dict[str, Callable[[Any], None]] = {
            "duration_seconds": lambda n : setattr(self, 'duration_seconds', n.get_int_value()),
            "ended_at": lambda n : setattr(self, 'ended_at', n.get_object_value(TwitchRecordedStream_ended_at)),
            "game": lambda n : setattr(self, 'game', n.get_object_value(TwitchRecordedStream_game)),
            "host": lambda n : setattr(self, 'host', n.get_object_value(TwitchRecordedStream_host)),
            "login": lambda n : setattr(self, 'login', n.get_str_value()),
            "path_timestamp": lambda n : setattr(self, 'path_timestamp', n.get_object_value(TwitchRecordedStream_path_timestamp)),
            "recording": lambda n : setattr(self, 'recording', n.get_enum_value(TwitchRecordedStream_recording)),
            "removed_at": lambda n : setattr(self, 'removed_at', n.get_object_value(TwitchRecordedStream_removed_at)),
            "started_at": lambda n : setattr(self, 'started_at', n.get_str_value()),
            "stream_id": lambda n : setattr(self, 'stream_id', n.get_str_value()),
            "title": lambda n : setattr(self, 'title', n.get_object_value(TwitchRecordedStream_title)),
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
        writer.write_int_value("duration_seconds", self.duration_seconds)
        writer.write_object_value("ended_at", self.ended_at)
        writer.write_object_value("game", self.game)
        writer.write_object_value("host", self.host)
        writer.write_str_value("login", self.login)
        writer.write_object_value("path_timestamp", self.path_timestamp)
        writer.write_enum_value("recording", self.recording)
        writer.write_object_value("removed_at", self.removed_at)
        writer.write_str_value("started_at", self.started_at)
        writer.write_str_value("stream_id", self.stream_id)
        writer.write_object_value("title", self.title)
    

