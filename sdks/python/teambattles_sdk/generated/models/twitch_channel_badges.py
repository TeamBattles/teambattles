from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .twitch_badge_set import TwitchBadgeSet
    from .twitch_channel_badges_broadcaster_id import TwitchChannelBadges_broadcaster_id
    from .twitch_channel_badges_broadcaster_name import TwitchChannelBadges_broadcaster_name

@dataclass
class TwitchChannelBadges(Parsable):
    """
    Channel-specific Twitch chat badges.
    """
    # Channel-specific Twitch chat badge sets.
    badges: Optional[list[TwitchBadgeSet]] = None
    # Resolved broadcaster (channel) id.
    broadcaster_id: Optional[TwitchChannelBadges_broadcaster_id] = None
    # Resolved broadcaster display name or login.
    broadcaster_name: Optional[TwitchChannelBadges_broadcaster_name] = None
    # Response generation time (ISO 8601).
    timestamp: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TwitchChannelBadges:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TwitchChannelBadges
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TwitchChannelBadges()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .twitch_badge_set import TwitchBadgeSet
        from .twitch_channel_badges_broadcaster_id import TwitchChannelBadges_broadcaster_id
        from .twitch_channel_badges_broadcaster_name import TwitchChannelBadges_broadcaster_name

        from .twitch_badge_set import TwitchBadgeSet
        from .twitch_channel_badges_broadcaster_id import TwitchChannelBadges_broadcaster_id
        from .twitch_channel_badges_broadcaster_name import TwitchChannelBadges_broadcaster_name

        fields: dict[str, Callable[[Any], None]] = {
            "badges": lambda n : setattr(self, 'badges', n.get_collection_of_object_values(TwitchBadgeSet)),
            "broadcaster_id": lambda n : setattr(self, 'broadcaster_id', n.get_object_value(TwitchChannelBadges_broadcaster_id)),
            "broadcaster_name": lambda n : setattr(self, 'broadcaster_name', n.get_object_value(TwitchChannelBadges_broadcaster_name)),
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
        writer.write_collection_of_object_values("badges", self.badges)
        writer.write_object_value("broadcaster_id", self.broadcaster_id)
        writer.write_object_value("broadcaster_name", self.broadcaster_name)
        writer.write_str_value("timestamp", self.timestamp)
    

