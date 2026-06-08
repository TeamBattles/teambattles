from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ApiObjective(Parsable):
    """
    Server-safe objective DTO. UI icon components are intentionally omitted.
    """
    # Machine-readable completion rule.
    completion_rule: Optional[str] = None
    # i18n key for the objective description.
    description_key: Optional[str] = None
    # Experience awarded by this objective.
    exp: Optional[float] = None
    # Objective definition ID.
    id: Optional[str] = None
    # Objective completion scope.
    scope: Optional[str] = None
    # i18n key for the objective title.
    title_key: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiObjective:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiObjective
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiObjective()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "completionRule": lambda n : setattr(self, 'completion_rule', n.get_str_value()),
            "descriptionKey": lambda n : setattr(self, 'description_key', n.get_str_value()),
            "exp": lambda n : setattr(self, 'exp', n.get_float_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "scope": lambda n : setattr(self, 'scope', n.get_str_value()),
            "titleKey": lambda n : setattr(self, 'title_key', n.get_str_value()),
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
        writer.write_str_value("completionRule", self.completion_rule)
        writer.write_str_value("descriptionKey", self.description_key)
        writer.write_float_value("exp", self.exp)
        writer.write_str_value("id", self.id)
        writer.write_str_value("scope", self.scope)
        writer.write_str_value("titleKey", self.title_key)
    

