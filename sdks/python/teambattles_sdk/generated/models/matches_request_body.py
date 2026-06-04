from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .matches_request_body_cursor import MatchesRequestBody_cursor

@dataclass
class MatchesRequestBody(AdditionalDataHolder, Parsable):
    """
    Filters and cursor pagination for listing matches.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Page size (1-100). Defaults to 25.
    num_items: Optional[int] = 25
    # ISO 8601; only matches created at or after this time.
    created_after: Optional[str] = None
    # ISO 8601; only matches created at or before this time.
    created_before: Optional[str] = None
    # Opaque continuation cursor from a prior page's continueCursor.
    cursor: Optional[MatchesRequestBody_cursor] = None
    # Exclude matches with these MatchStatus codes; unknown values are ignored.
    exclude_statuses: Optional[list[str]] = None
    # Filter to a single game by id.
    game_id: Optional[str] = None
    # Only include matches with these MatchStatus codes; unknown values are ignored.
    include_statuses: Optional[list[str]] = None
    # Filter to matches against this opponent team (team id or slug).
    opponent_id: Optional[str] = None
    # ISO 8601; only matches scheduled at or after this time.
    scheduled_after: Optional[str] = None
    # ISO 8601; only matches scheduled at or before this time.
    scheduled_before: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MatchesRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MatchesRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MatchesRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .matches_request_body_cursor import MatchesRequestBody_cursor

        from .matches_request_body_cursor import MatchesRequestBody_cursor

        fields: dict[str, Callable[[Any], None]] = {
            "createdAfter": lambda n : setattr(self, 'created_after', n.get_str_value()),
            "createdBefore": lambda n : setattr(self, 'created_before', n.get_str_value()),
            "cursor": lambda n : setattr(self, 'cursor', n.get_object_value(MatchesRequestBody_cursor)),
            "excludeStatuses": lambda n : setattr(self, 'exclude_statuses', n.get_collection_of_primitive_values(str)),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "includeStatuses": lambda n : setattr(self, 'include_statuses', n.get_collection_of_primitive_values(str)),
            "numItems": lambda n : setattr(self, 'num_items', n.get_int_value()),
            "opponentId": lambda n : setattr(self, 'opponent_id', n.get_str_value()),
            "scheduledAfter": lambda n : setattr(self, 'scheduled_after', n.get_str_value()),
            "scheduledBefore": lambda n : setattr(self, 'scheduled_before', n.get_str_value()),
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
        writer.write_str_value("createdAfter", self.created_after)
        writer.write_str_value("createdBefore", self.created_before)
        writer.write_object_value("cursor", self.cursor)
        writer.write_collection_of_primitive_values("excludeStatuses", self.exclude_statuses)
        writer.write_str_value("gameId", self.game_id)
        writer.write_collection_of_primitive_values("includeStatuses", self.include_statuses)
        writer.write_int_value("numItems", self.num_items)
        writer.write_str_value("opponentId", self.opponent_id)
        writer.write_str_value("scheduledAfter", self.scheduled_after)
        writer.write_str_value("scheduledBefore", self.scheduled_before)
        writer.write_additional_data_value(self.additional_data)
    

