from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class LeaguesPostResponse_pagination(Parsable):
    # The limit property
    limit: Optional[int] = None
    # The page property
    page: Optional[int] = None
    # The total property
    total: Optional[int] = None
    # The totalPages property
    total_pages: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeaguesPostResponse_pagination:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeaguesPostResponse_pagination
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeaguesPostResponse_pagination()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "limit": lambda n : setattr(self, 'limit', n.get_int_value()),
            "page": lambda n : setattr(self, 'page', n.get_int_value()),
            "total": lambda n : setattr(self, 'total', n.get_int_value()),
            "totalPages": lambda n : setattr(self, 'total_pages', n.get_int_value()),
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
        writer.write_int_value("limit", self.limit)
        writer.write_int_value("page", self.page)
        writer.write_int_value("total", self.total)
        writer.write_int_value("totalPages", self.total_pages)
    

