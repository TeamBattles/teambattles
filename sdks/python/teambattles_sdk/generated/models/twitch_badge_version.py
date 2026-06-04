from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TwitchBadgeVersion(Parsable):
    """
    A single version of a Twitch chat badge.
    """
    # Optional click action identifier.
    click_action: Optional[str] = None
    # Optional URL opened when the badge is clicked.
    click_url: Optional[str] = None
    # Human-readable badge description.
    description: Optional[str] = None
    # Badge version id (e.g. tier level or numeric id).
    id: Optional[str] = None
    # Badge image URL at 1x resolution.
    image_url_1x: Optional[str] = None
    # Badge image URL at 2x resolution.
    image_url_2x: Optional[str] = None
    # Badge image URL at 4x resolution.
    image_url_4x: Optional[str] = None
    # Human-readable badge title.
    title: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchBadgeVersion:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchBadgeVersion
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TwitchBadgeVersion()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "click_action": lambda n : setattr(self, 'click_action', n.get_str_value()),
            "click_url": lambda n : setattr(self, 'click_url', n.get_str_value()),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "image_url_1x": lambda n : setattr(self, 'image_url_1x', n.get_str_value()),
            "image_url_2x": lambda n : setattr(self, 'image_url_2x', n.get_str_value()),
            "image_url_4x": lambda n : setattr(self, 'image_url_4x', n.get_str_value()),
            "title": lambda n : setattr(self, 'title', n.get_str_value()),
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
        writer.write_str_value("click_action", self.click_action)
        writer.write_str_value("click_url", self.click_url)
        writer.write_str_value("description", self.description)
        writer.write_str_value("id", self.id)
        writer.write_str_value("image_url_1x", self.image_url_1x)
        writer.write_str_value("image_url_2x", self.image_url_2x)
        writer.write_str_value("image_url_4x", self.image_url_4x)
        writer.write_str_value("title", self.title)
    

