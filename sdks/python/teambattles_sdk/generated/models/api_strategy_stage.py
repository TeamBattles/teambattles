from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_strategy_stage_label import ApiStrategyStage_label

@dataclass
class ApiStrategyStage(Parsable):
    """
    A single playback stage of a strategy.
    """
    # Stage playback duration in milliseconds.
    duration_ms: Optional[int] = None
    # Stable stage id within the strategy.
    id: Optional[str] = None
    # Author stage label, when set.
    label: Optional[ApiStrategyStage_label] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiStrategyStage:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiStrategyStage
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiStrategyStage()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_strategy_stage_label import ApiStrategyStage_label

        from .api_strategy_stage_label import ApiStrategyStage_label

        fields: dict[str, Callable[[Any], None]] = {
            "durationMs": lambda n : setattr(self, 'duration_ms', n.get_int_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "label": lambda n : setattr(self, 'label', n.get_object_value(ApiStrategyStage_label)),
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
        writer.write_int_value("durationMs", self.duration_ms)
        writer.write_str_value("id", self.id)
        writer.write_object_value("label", self.label)
    

