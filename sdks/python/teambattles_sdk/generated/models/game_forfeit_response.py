from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class GameForfeitResponse(Parsable):
    """
    Result of a successful match forfeit.
    """
    # ID of the team that forfeited.
    forfeited_by_team_id: Optional[str] = None
    # ID of the forfeited match.
    match_id: Optional[str] = None
    # The success property
    success: Optional[bool] = None
    # Server response time (ISO 8601).
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameForfeitResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameForfeitResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameForfeitResponse()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "forfeitedByTeamId": lambda n : setattr(self, 'forfeited_by_team_id', n.get_str_value()),
            "matchId": lambda n : setattr(self, 'match_id', n.get_str_value()),
            "success": lambda n : setattr(self, 'success', n.get_bool_value()),
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
        writer.write_str_value("forfeitedByTeamId", self.forfeited_by_team_id)
        writer.write_str_value("matchId", self.match_id)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
