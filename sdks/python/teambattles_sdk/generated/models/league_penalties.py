from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_penalties_cooldowns import LeaguePenalties_cooldowns
    from .league_penalties_penalties import LeaguePenalties_penalties

@dataclass
class LeaguePenalties(Parsable):
    """
    Penalties and cooldowns for a league.
    """
    # Enriched member cooldown records (empty when type is penalties).
    cooldowns: Optional[list[LeaguePenalties_cooldowns]] = None
    # Combined number of penalties and cooldowns returned.
    count: Optional[int] = None
    # Enriched penalty records (empty when type is cooldowns).
    penalties: Optional[list[LeaguePenalties_penalties]] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeaguePenalties:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeaguePenalties
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeaguePenalties()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_penalties_cooldowns import LeaguePenalties_cooldowns
        from .league_penalties_penalties import LeaguePenalties_penalties

        from .league_penalties_cooldowns import LeaguePenalties_cooldowns
        from .league_penalties_penalties import LeaguePenalties_penalties

        fields: dict[str, Callable[[Any], None]] = {
            "cooldowns": lambda n : setattr(self, 'cooldowns', n.get_collection_of_object_values(LeaguePenalties_cooldowns)),
            "count": lambda n : setattr(self, 'count', n.get_int_value()),
            "penalties": lambda n : setattr(self, 'penalties', n.get_collection_of_object_values(LeaguePenalties_penalties)),
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
        writer.write_collection_of_object_values("cooldowns", self.cooldowns)
        writer.write_int_value("count", self.count)
        writer.write_collection_of_object_values("penalties", self.penalties)
        writer.write_str_value("timestamp", self.timestamp)
    

