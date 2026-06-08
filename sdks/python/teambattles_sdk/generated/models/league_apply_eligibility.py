from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_apply_eligibility_eligibility import LeagueApplyEligibility_eligibility

@dataclass
class LeagueApplyEligibility(Parsable):
    """
    League application eligibility.
    """
    # API key owner's apply-to-join eligibility.
    eligibility: Optional[LeagueApplyEligibility_eligibility] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueApplyEligibility:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueApplyEligibility
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueApplyEligibility()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_apply_eligibility_eligibility import LeagueApplyEligibility_eligibility

        from .league_apply_eligibility_eligibility import LeagueApplyEligibility_eligibility

        fields: dict[str, Callable[[Any], None]] = {
            "eligibility": lambda n : setattr(self, 'eligibility', n.get_object_value(LeagueApplyEligibility_eligibility)),
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
        writer.write_object_value("eligibility", self.eligibility)
        writer.write_str_value("timestamp", self.timestamp)
    

