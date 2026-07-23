from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_profile_banner_url_member1 import TournamentProfile_bannerUrlMember1

@dataclass
class TournamentProfile_bannerUrl(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes str, TournamentProfile_bannerUrlMember1
    """
    # Composed type representation for type str
    string: Optional[str] = None
    # Composed type representation for type TournamentProfile_bannerUrlMember1
    tournament_profile_banner_url_member1: Optional[TournamentProfile_bannerUrlMember1] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentProfile_bannerUrl:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentProfile_bannerUrl
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = TournamentProfile_bannerUrl()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .tournament_profile_banner_url_member1 import TournamentProfile_bannerUrlMember1

            result.tournament_profile_banner_url_member1 = TournamentProfile_bannerUrlMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_profile_banner_url_member1 import TournamentProfile_bannerUrlMember1

        if self.tournament_profile_banner_url_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.tournament_profile_banner_url_member1)
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
            writer.write_object_value(None, self.tournament_profile_banner_url_member1)
    

