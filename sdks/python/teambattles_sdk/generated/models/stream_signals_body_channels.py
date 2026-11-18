from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .stream_signals_body_channels_kind import StreamSignalsBody_channels_kind

@dataclass
class StreamSignalsBody_channels(AdditionalDataHolder, Parsable):
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Twitch user id.
    id: Optional[str] = None
    # favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
    kind: Optional[StreamSignalsBody_channels_kind] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> StreamSignalsBody_channels:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: StreamSignalsBody_channels
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return StreamSignalsBody_channels()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .stream_signals_body_channels_kind import StreamSignalsBody_channels_kind

        from .stream_signals_body_channels_kind import StreamSignalsBody_channels_kind

        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "kind": lambda n : setattr(self, 'kind', n.get_enum_value(StreamSignalsBody_channels_kind)),
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
        writer.write_enum_value("kind", self.kind)
        writer.write_additional_data_value(self.additional_data)
    

