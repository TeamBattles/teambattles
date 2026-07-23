from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_bracket_display import TournamentBracket_display
    from .tournament_bracket_nodes import TournamentBracket_nodes
    from .tournament_bracket_rounds import TournamentBracket_rounds
    from .tournament_grand_final_advantage import TournamentGrandFinalAdvantage

@dataclass
class TournamentBracket(Parsable):
    """
    Rounds, nodes, and participant display data.
    """
    # Participant ID -> { name, avatarUrl, seed } display map.
    display: Optional[TournamentBracket_display] = None
    # Participant IDs currently disqualified.
    disqualified: Optional[list[str]] = None
    # Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
    grand_final_advantage: Optional[TournamentGrandFinalAdvantage] = None
    # Bracket node documents (slots, results, and links).
    nodes: Optional[list[TournamentBracket_nodes]] = None
    # Round documents, ordered by round number ascending.
    rounds: Optional[list[TournamentBracket_rounds]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentBracket:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentBracket
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentBracket()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_bracket_display import TournamentBracket_display
        from .tournament_bracket_nodes import TournamentBracket_nodes
        from .tournament_bracket_rounds import TournamentBracket_rounds
        from .tournament_grand_final_advantage import TournamentGrandFinalAdvantage

        from .tournament_bracket_display import TournamentBracket_display
        from .tournament_bracket_nodes import TournamentBracket_nodes
        from .tournament_bracket_rounds import TournamentBracket_rounds
        from .tournament_grand_final_advantage import TournamentGrandFinalAdvantage

        fields: dict[str, Callable[[Any], None]] = {
            "display": lambda n : setattr(self, 'display', n.get_object_value(TournamentBracket_display)),
            "disqualified": lambda n : setattr(self, 'disqualified', n.get_collection_of_primitive_values(str)),
            "grandFinalAdvantage": lambda n : setattr(self, 'grand_final_advantage', n.get_object_value(TournamentGrandFinalAdvantage)),
            "nodes": lambda n : setattr(self, 'nodes', n.get_collection_of_object_values(TournamentBracket_nodes)),
            "rounds": lambda n : setattr(self, 'rounds', n.get_collection_of_object_values(TournamentBracket_rounds)),
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
        writer.write_object_value("display", self.display)
        writer.write_collection_of_primitive_values("disqualified", self.disqualified)
        writer.write_object_value("grandFinalAdvantage", self.grand_final_advantage)
        writer.write_collection_of_object_values("nodes", self.nodes)
        writer.write_collection_of_object_values("rounds", self.rounds)
    

