from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_own_connection_connected_at import ApiOwnConnection_connectedAt
    from .api_own_connection_gaming_platform import ApiOwnConnection_gamingPlatform
    from .api_own_connection_region import ApiOwnConnection_region
    from .api_own_connection_url import ApiOwnConnection_url
    from .api_own_connection_username import ApiOwnConnection_username

@dataclass
class ApiOwnConnection(Parsable):
    """
    API-safe connection for the API key owner, including private fields.
    """
    # The connectedAt property
    connected_at: Optional[ApiOwnConnection_connectedAt] = None
    # Gaming platform (e.g. pc / console), when set.
    gaming_platform: Optional[ApiOwnConnection_gamingPlatform] = None
    # Connection ID.
    id: Optional[str] = None
    # The isPrimary property
    is_primary: Optional[bool] = None
    # True when the connection was self-reported (ownership unverified).
    is_self_reported: Optional[bool] = None
    # The isVerified property
    is_verified: Optional[bool] = None
    # Connected platform.
    platform: Optional[str] = None
    # Connection region, when set.
    region: Optional[ApiOwnConnection_region] = None
    # Whether the owner has chosen to show this connection on their profile.
    show_on_profile: Optional[bool] = None
    # The url property
    url: Optional[ApiOwnConnection_url] = None
    # The username property
    username: Optional[ApiOwnConnection_username] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiOwnConnection:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiOwnConnection
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiOwnConnection()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_own_connection_connected_at import ApiOwnConnection_connectedAt
        from .api_own_connection_gaming_platform import ApiOwnConnection_gamingPlatform
        from .api_own_connection_region import ApiOwnConnection_region
        from .api_own_connection_url import ApiOwnConnection_url
        from .api_own_connection_username import ApiOwnConnection_username

        from .api_own_connection_connected_at import ApiOwnConnection_connectedAt
        from .api_own_connection_gaming_platform import ApiOwnConnection_gamingPlatform
        from .api_own_connection_region import ApiOwnConnection_region
        from .api_own_connection_url import ApiOwnConnection_url
        from .api_own_connection_username import ApiOwnConnection_username

        fields: dict[str, Callable[[Any], None]] = {
            "connectedAt": lambda n : setattr(self, 'connected_at', n.get_object_value(ApiOwnConnection_connectedAt)),
            "gamingPlatform": lambda n : setattr(self, 'gaming_platform', n.get_object_value(ApiOwnConnection_gamingPlatform)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isPrimary": lambda n : setattr(self, 'is_primary', n.get_bool_value()),
            "isSelfReported": lambda n : setattr(self, 'is_self_reported', n.get_bool_value()),
            "isVerified": lambda n : setattr(self, 'is_verified', n.get_bool_value()),
            "platform": lambda n : setattr(self, 'platform', n.get_str_value()),
            "region": lambda n : setattr(self, 'region', n.get_object_value(ApiOwnConnection_region)),
            "showOnProfile": lambda n : setattr(self, 'show_on_profile', n.get_bool_value()),
            "url": lambda n : setattr(self, 'url', n.get_object_value(ApiOwnConnection_url)),
            "username": lambda n : setattr(self, 'username', n.get_object_value(ApiOwnConnection_username)),
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
        writer.write_object_value("gamingPlatform", self.gaming_platform)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isPrimary", self.is_primary)
        writer.write_bool_value("isSelfReported", self.is_self_reported)
        writer.write_bool_value("isVerified", self.is_verified)
        writer.write_str_value("platform", self.platform)
        writer.write_object_value("region", self.region)
        writer.write_bool_value("showOnProfile", self.show_on_profile)
        writer.write_object_value("url", self.url)
        writer.write_object_value("username", self.username)
    

