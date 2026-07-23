from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_format_config_best_of_ladder import TournamentFormatConfig_bestOfLadder
    from .tournament_format_config_grand_final_advantage import TournamentFormatConfig_grandFinalAdvantage
    from .tournament_format_config_round_robin_passes import TournamentFormatConfig_roundRobinPasses

@dataclass
class TournamentFormatConfig(AdditionalDataHolder, Parsable):
    """
    Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Best-of ladder. Both fields are required when formatConfig is sent.
    best_of_ladder: Optional[TournamentFormatConfig_bestOfLadder] = None
    # The grandFinalAdvantage property
    grand_final_advantage: Optional[TournamentFormatConfig_grandFinalAdvantage] = None
    # Round-robin only. 1 = single pass, 2 = double pass.
    round_robin_passes: Optional[TournamentFormatConfig_roundRobinPasses] = None
    # Swiss only. Number of rounds to play.
    swiss_round_count: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentFormatConfig:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentFormatConfig
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentFormatConfig()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_format_config_best_of_ladder import TournamentFormatConfig_bestOfLadder
        from .tournament_format_config_grand_final_advantage import TournamentFormatConfig_grandFinalAdvantage
        from .tournament_format_config_round_robin_passes import TournamentFormatConfig_roundRobinPasses

        from .tournament_format_config_best_of_ladder import TournamentFormatConfig_bestOfLadder
        from .tournament_format_config_grand_final_advantage import TournamentFormatConfig_grandFinalAdvantage
        from .tournament_format_config_round_robin_passes import TournamentFormatConfig_roundRobinPasses

        fields: dict[str, Callable[[Any], None]] = {
            "bestOfLadder": lambda n : setattr(self, 'best_of_ladder', n.get_object_value(TournamentFormatConfig_bestOfLadder)),
            "grandFinalAdvantage": lambda n : setattr(self, 'grand_final_advantage', n.get_object_value(TournamentFormatConfig_grandFinalAdvantage)),
            "roundRobinPasses": lambda n : setattr(self, 'round_robin_passes', n.get_object_value(TournamentFormatConfig_roundRobinPasses)),
            "swissRoundCount": lambda n : setattr(self, 'swiss_round_count', n.get_int_value()),
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
        writer.write_object_value("bestOfLadder", self.best_of_ladder)
        writer.write_object_value("grandFinalAdvantage", self.grand_final_advantage)
        writer.write_object_value("roundRobinPasses", self.round_robin_passes)
        writer.write_int_value("swissRoundCount", self.swiss_round_count)
        writer.write_additional_data_value(self.additional_data)
    

