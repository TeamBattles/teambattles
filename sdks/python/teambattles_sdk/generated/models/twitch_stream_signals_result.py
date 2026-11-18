from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .twitch_stream_signals_result_rejected import TwitchStreamSignalsResult_rejected

@dataclass
class TwitchStreamSignalsResult(Parsable):
    """
    What the stream index did with the channels it was sent.
    """
    # Channels now being recorded: ones already indexed (renewed) plus ones this call added.
    accepted: Optional[int] = None
    # Channels this call added to the index.
    added: Optional[int] = None
    # Channels that were not taken, each with its code.
    rejected: Optional[list[TwitchStreamSignalsResult_rejected]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchStreamSignalsResult:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchStreamSignalsResult
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TwitchStreamSignalsResult()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .twitch_stream_signals_result_rejected import TwitchStreamSignalsResult_rejected

        from .twitch_stream_signals_result_rejected import TwitchStreamSignalsResult_rejected

        fields: dict[str, Callable[[Any], None]] = {
            "accepted": lambda n : setattr(self, 'accepted', n.get_int_value()),
            "added": lambda n : setattr(self, 'added', n.get_int_value()),
            "rejected": lambda n : setattr(self, 'rejected', n.get_collection_of_object_values(TwitchStreamSignalsResult_rejected)),
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
        writer.write_int_value("accepted", self.accepted)
        writer.write_int_value("added", self.added)
        writer.write_collection_of_object_values("rejected", self.rejected)
    

