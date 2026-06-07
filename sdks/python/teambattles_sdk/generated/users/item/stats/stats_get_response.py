from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from ....models.api_user_stats import ApiUserStats

@dataclass
class StatsGetResponse(Parsable):
    """
    Envelope containing stats plus a response timestamp.
    """
    # API-safe aggregate user stats.
    stats: Optional[ApiUserStats] = None
    # ISO 8601 timestamp.
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> StatsGetResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: StatsGetResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return StatsGetResponse()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from ....models.api_user_stats import ApiUserStats

        from ....models.api_user_stats import ApiUserStats

        fields: dict[str, Callable[[Any], None]] = {
            "stats": lambda n : setattr(self, 'stats', n.get_object_value(ApiUserStats)),
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
        writer.write_object_value("stats", self.stats)
        writer.write_str_value("timestamp", self.timestamp)
