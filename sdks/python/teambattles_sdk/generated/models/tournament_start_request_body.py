from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_start_request_body_seed_method import TournamentStartRequestBody_seedMethod

@dataclass
class TournamentStartRequestBody(AdditionalDataHolder, Parsable):
    """
    Tournament start payload.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
    manual_order: Optional[list[str]] = None
    # How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
    seed_method: Optional[TournamentStartRequestBody_seedMethod] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentStartRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentStartRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentStartRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_start_request_body_seed_method import TournamentStartRequestBody_seedMethod

        from .tournament_start_request_body_seed_method import TournamentStartRequestBody_seedMethod

        fields: dict[str, Callable[[Any], None]] = {
            "manualOrder": lambda n : setattr(self, 'manual_order', n.get_collection_of_primitive_values(str)),
            "seedMethod": lambda n : setattr(self, 'seed_method', n.get_enum_value(TournamentStartRequestBody_seedMethod)),
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
        writer.write_collection_of_primitive_values("manualOrder", self.manual_order)
        writer.write_enum_value("seedMethod", self.seed_method)
        writer.write_additional_data_value(self.additional_data)
    

