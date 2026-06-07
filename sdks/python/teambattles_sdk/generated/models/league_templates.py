from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_templates_templates import LeagueTemplates_templates

@dataclass
class LeagueTemplates(Parsable):
    """
    League rule templates.
    """
    # Number of templates returned.
    count: Optional[int] = None
    # Rule templates visible to the API key owner.
    templates: Optional[list[LeagueTemplates_templates]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueTemplates:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueTemplates
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueTemplates()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_templates_templates import LeagueTemplates_templates

        from .league_templates_templates import LeagueTemplates_templates

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "templates": lambda n : setattr(self, 'templates', n.get_collection_of_object_values(LeagueTemplates_templates)),
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
        writer.write_collection_of_object_values("templates", self.templates)
        writer.write_str_value("timestamp", self.timestamp)
