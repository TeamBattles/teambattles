from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .upsert_display_rule_request_body_content import UpsertDisplayRuleRequestBody_content
    from .upsert_display_rule_request_body_scope import UpsertDisplayRuleRequestBody_scope

@dataclass
class UpsertDisplayRuleRequestBody(AdditionalDataHolder, Parsable):
    """
    Creates or updates a display rule.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Display rule category.
    category: Optional[str] = None
    # The categoryIcon property
    category_icon: Optional[str] = None
    # The categoryOrder property
    category_order: Optional[float] = None
    # The content property
    content: Optional[UpsertDisplayRuleRequestBody_content] = None
    # Game ID whose display rule should change.
    game_id: Optional[str] = None
    # The isCustomCategory property
    is_custom_category: Optional[bool] = None
    # The isOverride property
    is_override: Optional[bool] = None
    # The scope property
    scope: Optional[UpsertDisplayRuleRequestBody_scope] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpsertDisplayRuleRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpsertDisplayRuleRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpsertDisplayRuleRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .upsert_display_rule_request_body_content import UpsertDisplayRuleRequestBody_content
        from .upsert_display_rule_request_body_scope import UpsertDisplayRuleRequestBody_scope

        from .upsert_display_rule_request_body_content import UpsertDisplayRuleRequestBody_content
        from .upsert_display_rule_request_body_scope import UpsertDisplayRuleRequestBody_scope

        fields: dict[str, Callable[[Any], None]] = {
            "category": lambda n : setattr(self, 'category', n.get_str_value()),
            "categoryIcon": lambda n : setattr(self, 'category_icon', n.get_str_value()),
            "categoryOrder": lambda n : setattr(self, 'category_order', n.get_float_value()),
            "content": lambda n : setattr(self, 'content', n.get_object_value(UpsertDisplayRuleRequestBody_content)),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "isCustomCategory": lambda n : setattr(self, 'is_custom_category', n.get_bool_value()),
            "isOverride": lambda n : setattr(self, 'is_override', n.get_bool_value()),
            "scope": lambda n : setattr(self, 'scope', n.get_object_value(UpsertDisplayRuleRequestBody_scope)),
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
        writer.write_str_value("category", self.category)
        writer.write_str_value("categoryIcon", self.category_icon)
        writer.write_float_value("categoryOrder", self.category_order)
        writer.write_object_value("content", self.content)
        writer.write_str_value("gameId", self.game_id)
        writer.write_bool_value("isCustomCategory", self.is_custom_category)
        writer.write_bool_value("isOverride", self.is_override)
        writer.write_object_value("scope", self.scope)
        writer.write_additional_data_value(self.additional_data)
    

