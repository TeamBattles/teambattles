from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_user_profile_avatar_url import ApiUserProfile_avatarUrl
    from .api_user_profile_banner_url import ApiUserProfile_bannerUrl
    from .api_user_profile_bio import ApiUserProfile_bio
    from .api_user_profile_created_at import ApiUserProfile_createdAt
    from .api_user_profile_name import ApiUserProfile_name
    from .api_user_profile_username import ApiUserProfile_username
    from .profile_visibility import ProfileVisibility

@dataclass
class ApiUserProfile(Parsable):
    """
    API-safe public user profile.
    """
    # Avatar image URL, when set.
    avatar_url: Optional[ApiUserProfile_avatarUrl] = None
    # Banner image URL, when set.
    banner_url: Optional[ApiUserProfile_bannerUrl] = None
    # Public profile bio.
    bio: Optional[ApiUserProfile_bio] = None
    # The createdAt property
    created_at: Optional[ApiUserProfile_createdAt] = None
    # User ID.
    id: Optional[str] = None
    # The isVerified property
    is_verified: Optional[bool] = None
    # Display name, when set.
    name: Optional[ApiUserProfile_name] = None
    # User handle, when set.
    username: Optional[ApiUserProfile_username] = None
    # Public profile visibility setting.
    visibility: Optional[ProfileVisibility] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiUserProfile:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiUserProfile
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiUserProfile()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_user_profile_avatar_url import ApiUserProfile_avatarUrl
        from .api_user_profile_banner_url import ApiUserProfile_bannerUrl
        from .api_user_profile_bio import ApiUserProfile_bio
        from .api_user_profile_created_at import ApiUserProfile_createdAt
        from .api_user_profile_name import ApiUserProfile_name
        from .api_user_profile_username import ApiUserProfile_username
        from .profile_visibility import ProfileVisibility

        from .api_user_profile_avatar_url import ApiUserProfile_avatarUrl
        from .api_user_profile_banner_url import ApiUserProfile_bannerUrl
        from .api_user_profile_bio import ApiUserProfile_bio
        from .api_user_profile_created_at import ApiUserProfile_createdAt
        from .api_user_profile_name import ApiUserProfile_name
        from .api_user_profile_username import ApiUserProfile_username
        from .profile_visibility import ProfileVisibility

        fields: dict[str, Callable[[Any], None]] = {
            "avatarUrl": lambda n : setattr(self, 'avatar_url', n.get_object_value(ApiUserProfile_avatarUrl)),
            "bannerUrl": lambda n : setattr(self, 'banner_url', n.get_object_value(ApiUserProfile_bannerUrl)),
            "bio": lambda n : setattr(self, 'bio', n.get_object_value(ApiUserProfile_bio)),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_object_value(ApiUserProfile_createdAt)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isVerified": lambda n : setattr(self, 'is_verified', n.get_bool_value()),
            "name": lambda n : setattr(self, 'name', n.get_object_value(ApiUserProfile_name)),
            "username": lambda n : setattr(self, 'username', n.get_object_value(ApiUserProfile_username)),
            "visibility": lambda n : setattr(self, 'visibility', n.get_enum_value(ProfileVisibility)),
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
        writer.write_object_value("bannerUrl", self.banner_url)
        writer.write_object_value("bio", self.bio)
        writer.write_object_value("createdAt", self.created_at)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isVerified", self.is_verified)
        writer.write_object_value("name", self.name)
        writer.write_object_value("username", self.username)
        writer.write_enum_value("visibility", self.visibility)
    

