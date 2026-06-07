from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_catalog_entry_convex_id_member1 import ApiGameCatalogEntry_convexIdMember1

@dataclass
class ApiGameCatalogEntry_convexId(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes ApiGameCatalogEntry_convexIdMember1, str
    """
    # Composed type representation for type ApiGameCatalogEntry_convexIdMember1
    api_game_catalog_entry_convex_id_member1: Optional[ApiGameCatalogEntry_convexIdMember1] = None
    # Composed type representation for type str
    string: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameCatalogEntry_convexId:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameCatalogEntry_convexId
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = ApiGameCatalogEntry_convexId()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .api_game_catalog_entry_convex_id_member1 import ApiGameCatalogEntry_convexIdMember1

            result.api_game_catalog_entry_convex_id_member1 = ApiGameCatalogEntry_convexIdMember1()
        return result

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_catalog_entry_convex_id_member1 import ApiGameCatalogEntry_convexIdMember1

        if self.api_game_catalog_entry_convex_id_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.api_game_catalog_entry_convex_id_member1)
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
            writer.write_object_value(None, self.api_game_catalog_entry_convex_id_member1)
