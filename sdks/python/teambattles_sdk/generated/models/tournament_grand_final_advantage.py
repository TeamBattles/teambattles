from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_grand_final_advantage_type import TournamentGrandFinalAdvantage_type

@dataclass
class TournamentGrandFinalAdvantage(Parsable):
    """
    Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
    """
    # Which advantage the winners-bracket champion carries into the grand final.
    type: Optional[TournamentGrandFinalAdvantage_type] = None
    # Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
    win_headstart: Optional[float] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentGrandFinalAdvantage:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentGrandFinalAdvantage
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentGrandFinalAdvantage()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_grand_final_advantage_type import TournamentGrandFinalAdvantage_type

        from .tournament_grand_final_advantage_type import TournamentGrandFinalAdvantage_type

        fields: dict[str, Callable[[Any], None]] = {
            "type": lambda n : setattr(self, 'type', n.get_enum_value(TournamentGrandFinalAdvantage_type)),
            "winHeadstart": lambda n : setattr(self, 'win_headstart', n.get_float_value()),
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
        writer.write_enum_value("type", self.type)
        writer.write_float_value("winHeadstart", self.win_headstart)
    

