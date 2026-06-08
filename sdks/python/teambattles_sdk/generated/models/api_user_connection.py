from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_user_connection_connected_at import ApiUserConnection_connectedAt
    from .api_user_connection_url import ApiUserConnection_url
    from .api_user_connection_username import ApiUserConnection_username

@dataclass
class ApiUserConnection(Parsable):
    """
    API-safe public account connection.
    """
    # The connectedAt property
    connected_at: Optional[ApiUserConnection_connectedAt] = None
    # Connection ID.
    id: Optional[str] = None
    # The isPrimary property
    is_primary: Optional[bool] = None
    # The isVerified property
    is_verified: Optional[bool] = None
    # Connected platform.
    platform: Optional[str] = None
    # The url property
    url: Optional[ApiUserConnection_url] = None
    # The username property
    username: Optional[ApiUserConnection_username] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiUserConnection:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiUserConnection
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiUserConnection()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_user_connection_connected_at import ApiUserConnection_connectedAt
        from .api_user_connection_url import ApiUserConnection_url
        from .api_user_connection_username import ApiUserConnection_username

        from .api_user_connection_connected_at import ApiUserConnection_connectedAt
        from .api_user_connection_url import ApiUserConnection_url
        from .api_user_connection_username import ApiUserConnection_username

        fields: dict[str, Callable[[Any], None]] = {
            "connectedAt": lambda n : setattr(self, 'connected_at', n.get_object_value(ApiUserConnection_connectedAt)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isPrimary": lambda n : setattr(self, 'is_primary', n.get_bool_value()),
            "isVerified": lambda n : setattr(self, 'is_verified', n.get_bool_value()),
            "platform": lambda n : setattr(self, 'platform', n.get_str_value()),
            "url": lambda n : setattr(self, 'url', n.get_object_value(ApiUserConnection_url)),
            "username": lambda n : setattr(self, 'username', n.get_object_value(ApiUserConnection_username)),
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
        writer.write_object_value("connectedAt", self.connected_at)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isPrimary", self.is_primary)
        writer.write_bool_value("isVerified", self.is_verified)
        writer.write_str_value("platform", self.platform)
        writer.write_object_value("url", self.url)
        writer.write_object_value("username", self.username)
    

