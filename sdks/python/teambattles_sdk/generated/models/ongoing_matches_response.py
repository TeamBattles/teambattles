from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_match_detail import ApiMatchDetail

@dataclass
class OngoingMatchesResponse(Parsable):
    """
    Ongoing matches for the API key owner's active teams.
    """
    # The matches property
    matches: Optional[list[ApiMatchDetail]] = None
    # The timestamp property
    timestamp: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> OngoingMatchesResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: OngoingMatchesResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return OngoingMatchesResponse()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_match_detail import ApiMatchDetail

        from .api_match_detail import ApiMatchDetail

        fields: dict[str, Callable[[Any], None]] = {
            "matches": lambda n : setattr(self, 'matches', n.get_collection_of_object_values(ApiMatchDetail)),
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
        writer.write_collection_of_object_values("matches", self.matches)
        writer.write_str_value("timestamp", self.timestamp)
