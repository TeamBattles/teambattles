from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .twitch_badge_version import TwitchBadgeVersion

@dataclass
class TwitchBadgeSet(Parsable):
    """
    A set of related Twitch chat badge versions.
    """
    # Badge set identifier (e.g. subscriber, moderator).
    set_id: Optional[str] = None
    # Available versions within this badge set.
    versions: Optional[list[TwitchBadgeVersion]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchBadgeSet:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchBadgeSet
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TwitchBadgeSet()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .twitch_badge_version import TwitchBadgeVersion

        from .twitch_badge_version import TwitchBadgeVersion

        fields: dict[str, Callable[[Any], None]] = {
            "set_id": lambda n : setattr(self, 'set_id', n.get_str_value()),
            "versions": lambda n : setattr(self, 'versions', n.get_collection_of_object_values(TwitchBadgeVersion)),
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
        writer.write_str_value("set_id", self.set_id)
        writer.write_collection_of_object_values("versions", self.versions)
    

