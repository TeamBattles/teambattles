from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class CreateSeasonRequestBody(AdditionalDataHolder, Parsable):
    """
    League season creation payload.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Season end timestamp in milliseconds.
    end_date: Optional[float] = None
    # Game ID the season belongs to.
    game_id: Optional[str] = None
    # Season name.
    name: Optional[str] = None
    # Season start timestamp in milliseconds.
    start_date: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateSeasonRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateSeasonRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateSeasonRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "endDate": lambda n : setattr(self, 'end_date', n.get_float_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "startDate": lambda n : setattr(self, 'start_date', n.get_float_value()),
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
        writer.write_float_value("endDate", self.end_date)
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("name", self.name)
        writer.write_float_value("startDate", self.start_date)
        writer.write_additional_data_value(self.additional_data)
    

