from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_rank_top250_rank_member1 import ApiGameRank_top250RankMember1

@dataclass
class ApiGameRank_top250Rank(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes ApiGameRank_top250RankMember1, int
    """
    # Composed type representation for type ApiGameRank_top250RankMember1
    api_game_rank_top250_rank_member1: Optional[ApiGameRank_top250RankMember1] = None
    # Composed type representation for type int
    integer: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameRank_top250Rank:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameRank_top250Rank
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = ApiGameRank_top250Rank()
        if integer_value := parse_node.get_int_value():
            result.integer = integer_value
        else:
            from .api_game_rank_top250_rank_member1 import ApiGameRank_top250RankMember1

            result.api_game_rank_top250_rank_member1 = ApiGameRank_top250RankMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_rank_top250_rank_member1 import ApiGameRank_top250RankMember1

        if self.api_game_rank_top250_rank_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.api_game_rank_top250_rank_member1)
        return {}
    
    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        if self.integer:
            writer.write_int_value(None, self.integer)
        else:
            writer.write_object_value(None, self.api_game_rank_top250_rank_member1)
    

