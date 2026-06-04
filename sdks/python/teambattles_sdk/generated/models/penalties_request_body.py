from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .penalties_request_body_type import PenaltiesRequestBody_type

@dataclass
class PenaltiesRequestBody(AdditionalDataHolder, Parsable):
    """
    Type, team, game, and limit filters for league penalties and cooldowns.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Maximum number of penalties to return (1-100). Defaults to 50.
    limit: Optional[int] = 50
    from .penalties_request_body_type import PenaltiesRequestBody_type

    # Which record kinds to return. Defaults to all.
    type: Optional[PenaltiesRequestBody_type] = PenaltiesRequestBody_type("all")
    # Filter penalties to a specific game id.
    game_id: Optional[str] = None
    # Filter penalties to a specific team id.
    team_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> PenaltiesRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: PenaltiesRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return PenaltiesRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .penalties_request_body_type import PenaltiesRequestBody_type

        from .penalties_request_body_type import PenaltiesRequestBody_type

        fields: dict[str, Callable[[Any], None]] = {
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "limit": lambda n : setattr(self, 'limit', n.get_int_value()),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
            "type": lambda n : setattr(self, 'type', n.get_enum_value(PenaltiesRequestBody_type)),
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
        writer.write_str_value("gameId", self.game_id)
        writer.write_int_value("limit", self.limit)
        writer.write_str_value("teamId", self.team_id)
        writer.write_enum_value("type", self.type)
        writer.write_additional_data_value(self.additional_data)
    

