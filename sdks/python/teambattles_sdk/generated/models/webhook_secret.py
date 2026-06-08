from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class WebhookSecret(Parsable):
    """
    One-time signing-secret reveal (create/rotate).
    """
    # The endpoint id the secret belongs to.
    id: Optional[str] = None
    # First 8 chars of the new signing secret.
    secret_prefix: Optional[str] = None
    # Plaintext signing secret. Shown ONCE - store it now.
    signing_secret: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> WebhookSecret:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: WebhookSecret
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return WebhookSecret()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "secretPrefix": lambda n : setattr(self, 'secret_prefix', n.get_str_value()),
            "signingSecret": lambda n : setattr(self, 'signing_secret', n.get_str_value()),
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
        writer.write_str_value("id", self.id)
        writer.write_str_value("secretPrefix", self.secret_prefix)
        writer.write_str_value("signingSecret", self.signing_secret)
    

