from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ApplyRuleTemplateRequestBody(AdditionalDataHolder, Parsable):
    """
    Applies a rule template.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Game ID to apply the template to.
    game_id: Optional[str] = None
    # League rule template ID.
    template_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApplyRuleTemplateRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApplyRuleTemplateRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApplyRuleTemplateRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "templateId": lambda n : setattr(self, 'template_id', n.get_str_value()),
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
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("templateId", self.template_id)
        writer.write_additional_data_value(self.additional_data)
    

