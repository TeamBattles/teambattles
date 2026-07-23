from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_summary import TournamentSummary

@dataclass
class TournamentDiscoverPage(Parsable):
    """
    A page of publicly listed tournaments, featured entries first.
    """
    # Number of tournaments in this page.
    count: Optional[int] = None
    # Echo of the applied page size.
    limit: Optional[int] = None
    # Echo of the requested 1-based page.
    page: Optional[int] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    # Total tournaments matching the filters.
    total: Optional[int] = None
    # Tournaments on this page.
    tournaments: Optional[list[TournamentSummary]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentDiscoverPage:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentDiscoverPage
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentDiscoverPage()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_summary import TournamentSummary

        from .tournament_summary import TournamentSummary

        fields: dict[str, Callable[[Any], None]] = {
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "limit": lambda n : setattr(self, 'limit', n.get_int_value()),
            "page": lambda n : setattr(self, 'page', n.get_int_value()),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
            "total": lambda n : setattr(self, 'total', n.get_int_value()),
            "tournaments": lambda n : setattr(self, 'tournaments', n.get_collection_of_object_values(TournamentSummary)),
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
        writer.write_int_value("count", self.count)
        writer.write_int_value("limit", self.limit)
        writer.write_int_value("page", self.page)
        writer.write_str_value("timestamp", self.timestamp)
        writer.write_int_value("total", self.total)
        writer.write_collection_of_object_values("tournaments", self.tournaments)
    

