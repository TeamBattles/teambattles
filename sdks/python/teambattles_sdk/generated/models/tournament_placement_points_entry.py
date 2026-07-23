from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class TournamentPlacementPointsEntry(AdditionalDataHolder, Parsable):
    """
    One placement -> points row.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Final placement, 1 = champion.
    placement: Optional[int] = None
    # League points awarded, 0-1000.
    points: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentPlacementPointsEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentPlacementPointsEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentPlacementPointsEntry()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "placement": lambda n : setattr(self, 'placement', n.get_int_value()),
            "points": lambda n : setattr(self, 'points', n.get_float_value()),
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
        writer.write_int_value("placement", self.placement)
        writer.write_float_value("points", self.points)
        writer.write_additional_data_value(self.additional_data)
    

