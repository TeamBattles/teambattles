from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class MarkMatchReadyResponse(Parsable):
    # The matchReady property
    match_ready: Optional[bool] = None
    # The success property
    success: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MarkMatchReadyResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MarkMatchReadyResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MarkMatchReadyResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "matchReady": lambda n : setattr(self, 'match_ready', n.get_bool_value()),
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
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
        writer.write_bool_value("matchReady", self.match_ready)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

