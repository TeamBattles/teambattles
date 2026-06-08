from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class CreateBanRequestBody(AdditionalDataHolder, Parsable):
    """
    Creates a league team ban.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Expiration timestamp for temporary bans, in epoch milliseconds.
    expires_at: Optional[float] = None
    # Whether the ban never expires.
    is_permanent: Optional[bool] = None
    # Reason for the ban.
    reason: Optional[str] = None
    # Team ID to ban from the league.
    team_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> CreateBanRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: CreateBanRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return CreateBanRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "expiresAt": lambda n : setattr(self, 'expires_at', n.get_float_value()),
            "isPermanent": lambda n : setattr(self, 'is_permanent', n.get_bool_value()),
            "reason": lambda n : setattr(self, 'reason', n.get_str_value()),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
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
        writer.write_float_value("expiresAt", self.expires_at)
        writer.write_bool_value("isPermanent", self.is_permanent)
        writer.write_str_value("reason", self.reason)
        writer.write_str_value("teamId", self.team_id)
        writer.write_additional_data_value(self.additional_data)
    

