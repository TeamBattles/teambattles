from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class AnnounceLeagueResponse(Parsable):
    # Number of members notified by the announcement.
    notified: Optional[float] = None
    # The success property
    success: Optional[bool] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> AnnounceLeagueResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: AnnounceLeagueResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return AnnounceLeagueResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "notified": lambda n : setattr(self, 'notified', n.get_float_value()),
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
        writer.write_float_value("notified", self.notified)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

