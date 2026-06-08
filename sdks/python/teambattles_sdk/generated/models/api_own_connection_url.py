from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_own_connection_url_member1 import ApiOwnConnection_urlMember1

@dataclass
class ApiOwnConnection_url(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes ApiOwnConnection_urlMember1, str
    """
    # Composed type representation for type ApiOwnConnection_urlMember1
    api_own_connection_url_member1: Optional[ApiOwnConnection_urlMember1] = None
    # Composed type representation for type str
    string: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiOwnConnection_url:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiOwnConnection_url
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = ApiOwnConnection_url()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .api_own_connection_url_member1 import ApiOwnConnection_urlMember1

            result.api_own_connection_url_member1 = ApiOwnConnection_urlMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_own_connection_url_member1 import ApiOwnConnection_urlMember1

        if self.api_own_connection_url_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.api_own_connection_url_member1)
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
            writer.write_object_value(None, self.api_own_connection_url_member1)
    

