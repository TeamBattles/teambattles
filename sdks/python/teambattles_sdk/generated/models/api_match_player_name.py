from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_player_name_member1 import ApiMatchPlayer_nameMember1

@dataclass
class ApiMatchPlayer_name(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes ApiMatchPlayer_nameMember1, str
    """
    # Composed type representation for type ApiMatchPlayer_nameMember1
    api_match_player_name_member1: Optional[ApiMatchPlayer_nameMember1] = None
    # Composed type representation for type str
    string: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiMatchPlayer_name:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiMatchPlayer_name
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = ApiMatchPlayer_name()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .api_match_player_name_member1 import ApiMatchPlayer_nameMember1

            result.api_match_player_name_member1 = ApiMatchPlayer_nameMember1()
        return result

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_player_name_member1 import ApiMatchPlayer_nameMember1

        if self.api_match_player_name_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.api_match_player_name_member1)
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
            writer.write_object_value(None, self.api_match_player_name_member1)
