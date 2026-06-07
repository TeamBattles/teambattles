from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .team_avatar_url_member1 import Team_avatarUrlMember1

@dataclass
class Team_avatarUrl(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes str, Team_avatarUrlMember1
    """
    # Composed type representation for type str
    string: Optional[str] = None
    # Composed type representation for type Team_avatarUrlMember1
    team_avatar_url_member1: Optional[Team_avatarUrlMember1] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> Team_avatarUrl:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: Team_avatarUrl
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = Team_avatarUrl()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .team_avatar_url_member1 import Team_avatarUrlMember1

            result.team_avatar_url_member1 = Team_avatarUrlMember1()
        return result

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .team_avatar_url_member1 import Team_avatarUrlMember1

        if self.team_avatar_url_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.team_avatar_url_member1)
        return {}

    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        if self.string:
            writer.write_str_value(None, self.string)
        else:
            writer.write_object_value(None, self.team_avatar_url_member1)
