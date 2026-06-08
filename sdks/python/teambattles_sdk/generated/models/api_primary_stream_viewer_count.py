from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_primary_stream_viewer_count_member1 import ApiPrimaryStream_viewerCountMember1

@dataclass
class ApiPrimaryStream_viewerCount(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes ApiPrimaryStream_viewerCountMember1, int
    """
    # Composed type representation for type ApiPrimaryStream_viewerCountMember1
    api_primary_stream_viewer_count_member1: Optional[ApiPrimaryStream_viewerCountMember1] = None
    # Composed type representation for type int
    integer: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiPrimaryStream_viewerCount:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiPrimaryStream_viewerCount
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = ApiPrimaryStream_viewerCount()
        if integer_value := parse_node.get_int_value():
            result.integer = integer_value
        else:
            from .api_primary_stream_viewer_count_member1 import ApiPrimaryStream_viewerCountMember1

            result.api_primary_stream_viewer_count_member1 = ApiPrimaryStream_viewerCountMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_primary_stream_viewer_count_member1 import ApiPrimaryStream_viewerCountMember1

        if self.api_primary_stream_viewer_count_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.api_primary_stream_viewer_count_member1)
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
            writer.write_object_value(None, self.api_primary_stream_viewer_count_member1)
    

