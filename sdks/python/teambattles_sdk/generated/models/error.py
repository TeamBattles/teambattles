from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.api_error import APIError
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class Error(APIError, Parsable):
    """
    Standard API error response.
    """
    # Optional human-readable explanation. Often absent on auth/permission errors.
    details: Optional[str] = None
    # Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
    error: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> Error:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: Error
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return Error()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "details": lambda n : setattr(self, 'details', n.get_str_value()),
            "error": lambda n : setattr(self, 'error', n.get_str_value()),
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
        writer.write_str_value("details", self.details)
        writer.write_str_value("error", self.error)
    
    @property
    def primary_message(self) -> Optional[str]:
        """
        The primary error message.
        """
        if self.detail is not None:
            return '' if self.details is None else self.details
        return ''

