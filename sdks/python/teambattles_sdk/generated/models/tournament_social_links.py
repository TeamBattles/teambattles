from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentSocialLinks(AdditionalDataHolder, Parsable):
    """
    Organizer social links.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The discord property
    discord: Optional[str] = None
    # The instagram property
    instagram: Optional[str] = None
    # The tiktok property
    tiktok: Optional[str] = None
    # The twitch property
    twitch: Optional[str] = None
    # The website property
    website: Optional[str] = None
    # The x property
    x: Optional[str] = None
    # The youtube property
    youtube: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentSocialLinks:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentSocialLinks
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentSocialLinks()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "discord": lambda n : setattr(self, 'discord', n.get_str_value()),
            "instagram": lambda n : setattr(self, 'instagram', n.get_str_value()),
            "tiktok": lambda n : setattr(self, 'tiktok', n.get_str_value()),
            "twitch": lambda n : setattr(self, 'twitch', n.get_str_value()),
            "website": lambda n : setattr(self, 'website', n.get_str_value()),
            "x": lambda n : setattr(self, 'x', n.get_str_value()),
            "youtube": lambda n : setattr(self, 'youtube', n.get_str_value()),
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
        writer.write_str_value("discord", self.discord)
        writer.write_str_value("instagram", self.instagram)
        writer.write_str_value("tiktok", self.tiktok)
        writer.write_str_value("twitch", self.twitch)
        writer.write_str_value("website", self.website)
        writer.write_str_value("x", self.x)
        writer.write_str_value("youtube", self.youtube)
        writer.write_additional_data_value(self.additional_data)
    

