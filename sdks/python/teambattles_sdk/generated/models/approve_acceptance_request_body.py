from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ApproveAcceptanceRequestBody(AdditionalDataHolder, Parsable):
    """
    Approves a pending match acceptance as the API key owner.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Optional list of available map IDs for the match.
    available_maps: Optional[list[str]] = None
    # Optional message sent to the accepting team.
    response_message: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApproveAcceptanceRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApproveAcceptanceRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApproveAcceptanceRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "availableMaps": lambda n : setattr(self, 'available_maps', n.get_collection_of_primitive_values(str)),
            "responseMessage": lambda n : setattr(self, 'response_message', n.get_str_value()),
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
        writer.write_collection_of_primitive_values("availableMaps", self.available_maps)
        writer.write_str_value("responseMessage", self.response_message)
        writer.write_additional_data_value(self.additional_data)
    

