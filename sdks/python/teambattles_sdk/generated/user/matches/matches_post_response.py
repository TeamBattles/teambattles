from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from ...models.user_match import UserMatch

@dataclass
class MatchesPostResponse(Parsable):
    # The continueCursor property
    continue_cursor: Optional[str] = None
    # The isDone property
    is_done: Optional[bool] = None
    # The page property
    page: Optional[list[UserMatch]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MatchesPostResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MatchesPostResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MatchesPostResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from ...models.user_match import UserMatch

        from ...models.user_match import UserMatch

        fields: dict[str, Callable[[Any], None]] = {
            "continueCursor": lambda n : setattr(self, 'continue_cursor', n.get_str_value()),
            "isDone": lambda n : setattr(self, 'is_done', n.get_bool_value()),
            "page": lambda n : setattr(self, 'page', n.get_collection_of_object_values(UserMatch)),
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
        writer.write_str_value("continueCursor", self.continue_cursor)
        writer.write_bool_value("isDone", self.is_done)
        writer.write_collection_of_object_values("page", self.page)
    

