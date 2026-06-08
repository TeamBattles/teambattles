from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class UpdateLobbyCodeResponse(Parsable):
    # The lobbyCode property
    lobby_code: Optional[str] = None
    # The statusChanged property
    status_changed: Optional[bool] = None
    # The success property
    success: Optional[bool] = None
    # The timestamp property
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdateLobbyCodeResponse:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdateLobbyCodeResponse
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdateLobbyCodeResponse()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "lobbyCode": lambda n : setattr(self, 'lobby_code', n.get_str_value()),
            "statusChanged": lambda n : setattr(self, 'status_changed', n.get_bool_value()),
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
        writer.write_str_value("lobbyCode", self.lobby_code)
        writer.write_bool_value("statusChanged", self.status_changed)
        writer.write_bool_value("success", self.success)
        writer.write_str_value("timestamp", self.timestamp)
    

