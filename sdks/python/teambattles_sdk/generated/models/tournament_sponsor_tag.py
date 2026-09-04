from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_sponsor_tag_prefix import TournamentSponsorTag_prefix

@dataclass
class TournamentSponsorTag(AdditionalDataHolder, Parsable):
    """
    One sponsor credit line.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Used only when prefix is CUSTOM.
    custom_prefix: Optional[str] = None
    # Convex storage id for the sponsor logo, from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url is rejected with 400 error_image_blob_unbound. On an update, re-send the id already stored on each sponsor row you are not changing.
    logo_storage_id: Optional[str] = None
    # The name property
    name: Optional[str] = None
    # The prefix property
    prefix: Optional[TournamentSponsorTag_prefix] = None
    # The url property
    url: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentSponsorTag:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentSponsorTag
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentSponsorTag()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_sponsor_tag_prefix import TournamentSponsorTag_prefix

        from .tournament_sponsor_tag_prefix import TournamentSponsorTag_prefix

        fields: dict[str, Callable[[Any], None]] = {
            "customPrefix": lambda n : setattr(self, 'custom_prefix', n.get_str_value()),
            "logoStorageId": lambda n : setattr(self, 'logo_storage_id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "prefix": lambda n : setattr(self, 'prefix', n.get_enum_value(TournamentSponsorTag_prefix)),
            "url": lambda n : setattr(self, 'url', n.get_str_value()),
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
        writer.write_str_value("customPrefix", self.custom_prefix)
        writer.write_str_value("logoStorageId", self.logo_storage_id)
        writer.write_str_value("name", self.name)
        writer.write_enum_value("prefix", self.prefix)
        writer.write_str_value("url", self.url)
        writer.write_additional_data_value(self.additional_data)
    

