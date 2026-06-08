from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class UpdateLeagueCooldownConfigRequestBody(AdditionalDataHolder, Parsable):
    """
    Updates league member cooldown configuration.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The kickCooldownHours property
    kick_cooldown_hours: Optional[float] = None
    # The maxCooldownHours property
    max_cooldown_hours: Optional[float] = None
    # The repeatLeaveCooldownMultiplier property
    repeat_leave_cooldown_multiplier: Optional[float] = None
    # The repeatLeavePenaltyEnabled property
    repeat_leave_penalty_enabled: Optional[bool] = None
    # The selfLeaveCooldownHours property
    self_leave_cooldown_hours: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateLeagueCooldownConfigRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateLeagueCooldownConfigRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateLeagueCooldownConfigRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "kickCooldownHours": lambda n : setattr(self, 'kick_cooldown_hours', n.get_float_value()),
            "maxCooldownHours": lambda n : setattr(self, 'max_cooldown_hours', n.get_float_value()),
            "repeatLeaveCooldownMultiplier": lambda n : setattr(self, 'repeat_leave_cooldown_multiplier', n.get_float_value()),
            "repeatLeavePenaltyEnabled": lambda n : setattr(self, 'repeat_leave_penalty_enabled', n.get_bool_value()),
            "selfLeaveCooldownHours": lambda n : setattr(self, 'self_leave_cooldown_hours', n.get_float_value()),
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
        writer.write_float_value("kickCooldownHours", self.kick_cooldown_hours)
        writer.write_float_value("maxCooldownHours", self.max_cooldown_hours)
        writer.write_float_value("repeatLeaveCooldownMultiplier", self.repeat_leave_cooldown_multiplier)
        writer.write_bool_value("repeatLeavePenaltyEnabled", self.repeat_leave_penalty_enabled)
        writer.write_float_value("selfLeaveCooldownHours", self.self_leave_cooldown_hours)
        writer.write_additional_data_value(self.additional_data)
    

