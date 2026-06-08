from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_batch_stream_status import ApiBatchStreamStatus

@dataclass
class ApiBatchStreamStatusEnvelope(Parsable):
    """
    Batch live-status results plus a response timestamp. Users not visible to the caller are omitted.
    """
    # The count property
    count: Optional[int] = None
    # The statuses property
    statuses: Optional[list[ApiBatchStreamStatus]] = None
    # ISO 8601 timestamp.
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiBatchStreamStatusEnvelope:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiBatchStreamStatusEnvelope
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiBatchStreamStatusEnvelope()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_batch_stream_status import ApiBatchStreamStatus

        from .api_batch_stream_status import ApiBatchStreamStatus

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "statuses": lambda n : setattr(self, 'statuses', n.get_collection_of_object_values(ApiBatchStreamStatus)),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
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
        writer.write_int_value("count", self.count)
        writer.write_collection_of_object_values("statuses", self.statuses)
        writer.write_str_value("timestamp", self.timestamp)
    

