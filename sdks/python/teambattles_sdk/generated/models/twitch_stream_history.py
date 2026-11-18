from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .stream_index_warning import StreamIndexWarning
    from .twitch_recorded_stream import TwitchRecordedStream

@dataclass
class TwitchStreamHistory(Parsable):
    """
    A Twitch channel's recorded stream history from the Battles Replay Indexer.
    """
    # Twitch user id of the channel.
    broadcaster_id: Optional[str] = None
    # Channel login.
    broadcaster_login: Optional[str] = None
    # When the index started recording this channel (ISO 8601).
    indexed_since: Optional[str] = None
    # Recorded streams, newest first.
    streams: Optional[list[TwitchRecordedStream]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    # Coverage warnings, each a code with its values.
    warnings: Optional[list[StreamIndexWarning]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchStreamHistory:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchStreamHistory
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TwitchStreamHistory()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .stream_index_warning import StreamIndexWarning
        from .twitch_recorded_stream import TwitchRecordedStream

        from .stream_index_warning import StreamIndexWarning
        from .twitch_recorded_stream import TwitchRecordedStream

        fields: dict[str, Callable[[Any], None]] = {
            "broadcaster_id": lambda n : setattr(self, 'broadcaster_id', n.get_str_value()),
            "broadcaster_login": lambda n : setattr(self, 'broadcaster_login', n.get_str_value()),
            "indexed_since": lambda n : setattr(self, 'indexed_since', n.get_str_value()),
            "streams": lambda n : setattr(self, 'streams', n.get_collection_of_object_values(TwitchRecordedStream)),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
            "warnings": lambda n : setattr(self, 'warnings', n.get_collection_of_object_values(StreamIndexWarning)),
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
        writer.write_str_value("broadcaster_id", self.broadcaster_id)
        writer.write_str_value("broadcaster_login", self.broadcaster_login)
        writer.write_str_value("indexed_since", self.indexed_since)
        writer.write_collection_of_object_values("streams", self.streams)
        writer.write_str_value("timestamp", self.timestamp)
        writer.write_collection_of_object_values("warnings", self.warnings)
    

