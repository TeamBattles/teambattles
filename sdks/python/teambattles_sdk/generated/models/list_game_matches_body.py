from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ListGameMatchesBody(AdditionalDataHolder, Parsable):
    """
    Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Opaque continuation cursor from a prior page's pagination.cursor.
    cursor: Optional[str] = None
    # Page size (1-100, enforced by the handler). Defaults to the handler's internal default.
    limit: Optional[float] = None
    # Optional MatchStatus filter (e.g. IN_PROGRESS).
    status: Optional[str] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ListGameMatchesBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ListGameMatchesBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ListGameMatchesBody()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "cursor": lambda n : setattr(self, 'cursor', n.get_str_value()),
            "limit": lambda n : setattr(self, 'limit', n.get_float_value()),
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
        writer.write_str_value("cursor", self.cursor)
        writer.write_float_value("limit", self.limit)
        writer.write_str_value("status", self.status)
        writer.write_additional_data_value(self.additional_data)


