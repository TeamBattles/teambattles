from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_game_catalog_entry import ApiGameCatalogEntry
    from .api_objective import ApiObjective

@dataclass
class ApiGameCatalogResponse(Parsable):
    """
    Game catalog list response.
    """
    # The games property
    games: Optional[list[ApiGameCatalogEntry]] = None
    # The objectives property
    objectives: Optional[list[ApiObjective]] = None
    # The timestamp property
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiGameCatalogResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiGameCatalogResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiGameCatalogResponse()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_game_catalog_entry import ApiGameCatalogEntry
        from .api_objective import ApiObjective

        from .api_game_catalog_entry import ApiGameCatalogEntry
        from .api_objective import ApiObjective

        fields: dict[str, Callable[[Any], None]] = {
            "games": lambda n : setattr(self, 'games', n.get_collection_of_object_values(ApiGameCatalogEntry)),
            "objectives": lambda n : setattr(self, 'objectives', n.get_collection_of_object_values(ApiObjective)),
            "timestamp": lambda n : setattr(self, 'timestamp', n.get_str_value()),
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
        writer.write_collection_of_object_values("games", self.games)
        writer.write_collection_of_object_values("objectives", self.objectives)
        writer.write_str_value("timestamp", self.timestamp)
