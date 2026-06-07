from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_player import ApiMatchPlayer

@dataclass
class ApiMatchPlayersResponse(Parsable):
    """
    SP-2 match player rows response.
    """
    # The matchId property
    match_id: Optional[str] = None
    # The players property
    players: Optional[list[ApiMatchPlayer]] = None
    # The timestamp property
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiMatchPlayersResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiMatchPlayersResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiMatchPlayersResponse()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_player import ApiMatchPlayer

        from .api_match_player import ApiMatchPlayer

        fields: dict[str, Callable[[Any], None]] = {
            "matchId": lambda n : setattr(self, 'match_id', n.get_str_value()),
            "players": lambda n : setattr(self, 'players', n.get_collection_of_object_values(ApiMatchPlayer)),
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
        writer.write_str_value("matchId", self.match_id)
        writer.write_collection_of_object_values("players", self.players)
        writer.write_str_value("timestamp", self.timestamp)
