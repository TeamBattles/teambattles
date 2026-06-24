from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .accept_challenge_request_body_bench_roster import AcceptChallengeRequestBody_benchRoster

@dataclass
class AcceptChallengeRequestBody(AdditionalDataHolder, Parsable):
    """
    Accepts a pending challenge as the API key owner.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Active roster user IDs for the challenge response.
    active_roster: Optional[list[str]] = None
    # Optional bench roster users.
    bench_roster: Optional[list[AcceptChallengeRequestBody_benchRoster]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> AcceptChallengeRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: AcceptChallengeRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return AcceptChallengeRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .accept_challenge_request_body_bench_roster import AcceptChallengeRequestBody_benchRoster

        from .accept_challenge_request_body_bench_roster import AcceptChallengeRequestBody_benchRoster

        fields: dict[str, Callable[[Any], None]] = {
            "activeRoster": lambda n : setattr(self, 'active_roster', n.get_collection_of_primitive_values(str)),
            "benchRoster": lambda n : setattr(self, 'bench_roster', n.get_collection_of_object_values(AcceptChallengeRequestBody_benchRoster)),
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
        writer.write_collection_of_primitive_values("activeRoster", self.active_roster)
        writer.write_collection_of_object_values("benchRoster", self.bench_roster)
        writer.write_additional_data_value(self.additional_data)
    

