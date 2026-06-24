from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class CreateTeamBody(AdditionalDataHolder, Parsable):
    """
    Creates a new team as the API key owner.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Optional team description.
    description: Optional[str] = None
    # Game ID the team competes in.
    game_id: Optional[str] = None
    # Team name.
    name: Optional[str] = None
    # Owning organization ID. The owner must manage it.
    organization_id: Optional[str] = None
    # Optional platform.
    platform: Optional[str] = None
    # Game playlist ID.
    playlist_id: Optional[str] = None
    # Optional region.
    region: Optional[str] = None
    # Team tag (short identifier).
    tag: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateTeamBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateTeamBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateTeamBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "organizationId": lambda n : setattr(self, 'organization_id', n.get_str_value()),
            "platform": lambda n : setattr(self, 'platform', n.get_str_value()),
            "playlistId": lambda n : setattr(self, 'playlist_id', n.get_str_value()),
            "region": lambda n : setattr(self, 'region', n.get_str_value()),
            "tag": lambda n : setattr(self, 'tag', n.get_str_value()),
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
        writer.write_str_value("description", self.description)
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("name", self.name)
        writer.write_str_value("organizationId", self.organization_id)
        writer.write_str_value("platform", self.platform)
        writer.write_str_value("playlistId", self.playlist_id)
        writer.write_str_value("region", self.region)
        writer.write_str_value("tag", self.tag)
        writer.write_additional_data_value(self.additional_data)
    

