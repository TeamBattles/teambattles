from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_format_config_grand_final_advantage_type import TournamentFormatConfig_grandFinalAdvantage_type

@dataclass
class TournamentFormatConfig_grandFinalAdvantage(AdditionalDataHolder, Parsable):
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The type property
    type: Optional[TournamentFormatConfig_grandFinalAdvantage_type] = None
    # Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
    win_headstart: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentFormatConfig_grandFinalAdvantage:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentFormatConfig_grandFinalAdvantage
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentFormatConfig_grandFinalAdvantage()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_format_config_grand_final_advantage_type import TournamentFormatConfig_grandFinalAdvantage_type

        from .tournament_format_config_grand_final_advantage_type import TournamentFormatConfig_grandFinalAdvantage_type

        fields: dict[str, Callable[[Any], None]] = {
            "type": lambda n : setattr(self, 'type', n.get_enum_value(TournamentFormatConfig_grandFinalAdvantage_type)),
            "winHeadstart": lambda n : setattr(self, 'win_headstart', n.get_int_value()),
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
        writer.write_int_value("winHeadstart", self.win_headstart)
        writer.write_additional_data_value(self.additional_data)
    

