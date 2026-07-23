from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentActivityActor(Parsable):
    """
    The user who performed a logged tournament action. Platform Staff actions suppress username/name and set isPlatformStaff: true, keeping only the id.
    """
    # Actor's user ID.
    id: Optional[str] = None
    # Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
    is_platform_staff: Optional[bool] = None
    # Display name. Omitted when the action was taken by Platform Staff.
    name: Optional[str] = None
    # Username. Omitted when the action was taken by Platform Staff.
    username: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentActivityActor:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentActivityActor
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentActivityActor()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isPlatformStaff": lambda n : setattr(self, 'is_platform_staff', n.get_bool_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "username": lambda n : setattr(self, 'username', n.get_str_value()),
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
        writer.write_bool_value("isPlatformStaff", self.is_platform_staff)
        writer.write_str_value("name", self.name)
        writer.write_str_value("username", self.username)
    

