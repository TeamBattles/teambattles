from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_strategy import ApiStrategy

@dataclass
class ApiStrategyEnvelope(Parsable):
    """
    Strategy plus a response timestamp.
    """
    # API-safe shareable strategy.
    strategy: Optional[ApiStrategy] = None
    # ISO 8601 timestamp.
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiStrategyEnvelope:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiStrategyEnvelope
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiStrategyEnvelope()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_strategy import ApiStrategy

        from .api_strategy import ApiStrategy

        fields: dict[str, Callable[[Any], None]] = {
            "strategy": lambda n : setattr(self, 'strategy', n.get_object_value(ApiStrategy)),
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
        writer.write_object_value("strategy", self.strategy)
        writer.write_str_value("timestamp", self.timestamp)
    

