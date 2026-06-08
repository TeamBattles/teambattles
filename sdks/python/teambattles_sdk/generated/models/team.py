from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .team_avatar_url import Team_avatarUrl

@dataclass
class Team(Parsable):
    """
    A team participating in a match.
    """
    # Team avatar URL.
    avatar_url: Optional[Team_avatarUrl] = None
    # Team ID.
    id: Optional[str] = None
    # Team name.
    name: Optional[str] = None
    # Team tag (short identifier).
    tag: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> Team:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: Team
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return Team()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .team_avatar_url import Team_avatarUrl

        from .team_avatar_url import Team_avatarUrl

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(Team_avatarUrl)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
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
        writer.write_object_value("avatarUrl", self.avatar_url)
        writer.write_str_value("id", self.id)
        writer.write_str_value("name", self.name)
        writer.write_str_value("tag", self.tag)
    

