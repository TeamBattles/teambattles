from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_format import TournamentFormat
    from .tournament_status import TournamentStatus

@dataclass
class TournamentDiscoverBody(AdditionalDataHolder, Parsable):
    """
    Filters for public tournament discovery.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Page size, 1-50.
    limit: Optional[int] = 12
    # 1-based page number.
    page: Optional[int] = 1
    # Filter by bracket format.
    format: Optional[TournamentFormat] = None
    # Filter to a single game by Convex ID.
    game_id: Optional[str] = None
    # Case-insensitive name substring. Ignored below 2 characters.
    search: Optional[str] = None
    # Filter by lifecycle status.
    status: Optional[TournamentStatus] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentDiscoverBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentDiscoverBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentDiscoverBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_format import TournamentFormat
        from .tournament_status import TournamentStatus

        from .tournament_format import TournamentFormat
        from .tournament_status import TournamentStatus

        fields: dict[str, Callable[[Any], None]] = {
            "format": lambda n : setattr(self, 'format', n.get_enum_value(TournamentFormat)),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "limit": lambda n : setattr(self, 'limit', n.get_int_value()),
            "page": lambda n : setattr(self, 'page', n.get_int_value()),
            "search": lambda n : setattr(self, 'search', n.get_str_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentStatus)),
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
        writer.write_enum_value("format", self.format)
        writer.write_str_value("gameId", self.game_id)
        writer.write_int_value("limit", self.limit)
        writer.write_int_value("page", self.page)
        writer.write_str_value("search", self.search)
        writer.write_enum_value("status", self.status)
        writer.write_additional_data_value(self.additional_data)
    

