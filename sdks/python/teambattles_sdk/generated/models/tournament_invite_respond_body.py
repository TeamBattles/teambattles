from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentInviteRespondBody(AdditionalDataHolder, Parsable):
    """
    Captain response to a tournament invite.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # true to accept the invite and enter the tournament, false to decline it. A competitive ban blocks accepting but never declining.
    accept: Optional[bool] = None
    # User IDs to register as the team's tournament roster. REQUIRED when accept is true and ignored when it is false. Every entry must be an ACTIVE member of the invited team, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small.
    roster: Optional[list[str]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentInviteRespondBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentInviteRespondBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentInviteRespondBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "accept": lambda n : setattr(self, 'accept', n.get_bool_value()),
            "roster": lambda n : setattr(self, 'roster', n.get_collection_of_primitive_values(str)),
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
        writer.write_bool_value("accept", self.accept)
        writer.write_collection_of_primitive_values("roster", self.roster)
        writer.write_additional_data_value(self.additional_data)
    

