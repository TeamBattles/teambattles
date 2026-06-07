from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class GameBatchMatchScoreResult(Parsable):
    """
    Outcome for a single (match, map) item in a multi-match batch.
    """
    # Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
    error: Optional[str] = None
    # Index of the map this result refers to.
    map_index: Optional[int] = None
    # Match ID this result refers to.
    match_id: Optional[str] = None
    # Per-item outcome: "confirmed" on success, "failed" otherwise.
    status: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> GameBatchMatchScoreResult:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: GameBatchMatchScoreResult
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return GameBatchMatchScoreResult()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "error": lambda n : setattr(self, 'error', n.get_str_value()),
            "mapIndex": lambda n : setattr(self, 'map_index', n.get_int_value()),
            "matchId": lambda n : setattr(self, 'match_id', n.get_str_value()),
            "status": lambda n : setattr(self, 'status', n.get_str_value()),
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
        writer.write_str_value("error", self.error)
        writer.write_int_value("mapIndex", self.map_index)
        writer.write_str_value("matchId", self.match_id)
        writer.write_str_value("status", self.status)
