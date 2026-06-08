from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_strategy_shape_layer import ApiStrategyShape_layer
    from .api_strategy_shape_type import ApiStrategyShape_type
    from .api_strategy_shape_updated_at import ApiStrategyShape_updatedAt

@dataclass
class ApiStrategyShape(Parsable):
    """
    API-safe strategy shape. Hidden working shapes are omitted from responses.
    """
    # Shape row ID.
    id: Optional[str] = None
    # Canvas layer the shape renders on.
    layer: Optional[ApiStrategyShape_layer] = None
    # Stable client-side shape id.
    shape_id: Optional[str] = None
    # Stage this shape belongs to.
    stage_id: Optional[str] = None
    # Shape primitive type.
    type: Optional[ApiStrategyShape_type] = None
    # The updatedAt property
    updated_at: Optional[ApiStrategyShape_updatedAt] = None
    # Stacking order within its layer.
    z_index: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiStrategyShape:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiStrategyShape
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiStrategyShape()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_strategy_shape_layer import ApiStrategyShape_layer
        from .api_strategy_shape_type import ApiStrategyShape_type
        from .api_strategy_shape_updated_at import ApiStrategyShape_updatedAt

        from .api_strategy_shape_layer import ApiStrategyShape_layer
        from .api_strategy_shape_type import ApiStrategyShape_type
        from .api_strategy_shape_updated_at import ApiStrategyShape_updatedAt

        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "layer": lambda n : setattr(self, 'layer', n.get_enum_value(ApiStrategyShape_layer)),
            "shapeId": lambda n : setattr(self, 'shape_id', n.get_str_value()),
            "stageId": lambda n : setattr(self, 'stage_id', n.get_str_value()),
            "type": lambda n : setattr(self, 'type', n.get_enum_value(ApiStrategyShape_type)),
            "updatedAt": lambda n : setattr(self, 'updated_at', n.get_object_value(ApiStrategyShape_updatedAt)),
            "zIndex": lambda n : setattr(self, 'z_index', n.get_float_value()),
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
        writer.write_enum_value("layer", self.layer)
        writer.write_str_value("shapeId", self.shape_id)
        writer.write_str_value("stageId", self.stage_id)
        writer.write_enum_value("type", self.type)
        writer.write_object_value("updatedAt", self.updated_at)
        writer.write_float_value("zIndex", self.z_index)
    

