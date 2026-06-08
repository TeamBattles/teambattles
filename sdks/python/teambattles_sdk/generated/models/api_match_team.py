from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_team_avatar_url import ApiMatchTeam_avatarUrl
    from .api_match_team_score import ApiMatchTeam_score

@dataclass
class ApiMatchTeam(Parsable):
    """
    Team summary embedded in SP-2 match reads.
    """
    # Team avatar URL.
    avatar_url: Optional[ApiMatchTeam_avatarUrl] = None
    # Team ID.
    id: Optional[str] = None
    # Team name.
    name: Optional[str] = None
    # The score property
    score: Optional[ApiMatchTeam_score] = None
    # Team tag (short identifier).
    tag: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiMatchTeam:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiMatchTeam
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiMatchTeam()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_team_avatar_url import ApiMatchTeam_avatarUrl
        from .api_match_team_score import ApiMatchTeam_score

        from .api_match_team_avatar_url import ApiMatchTeam_avatarUrl
        from .api_match_team_score import ApiMatchTeam_score

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiMatchTeam_avatarUrl)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "score": lambda n : setattr(self, 'score', n.get_object_value(ApiMatchTeam_score)),
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
        writer.write_object_value("score", self.score)
        writer.write_str_value("tag", self.tag)
    

