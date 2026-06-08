from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .match_discover_body_cursor import MatchDiscoverBody_cursor
    from .match_discover_body_match_type import MatchDiscoverBody_matchType
    from .match_discover_body_platform import MatchDiscoverBody_platform
    from .match_discover_body_region import MatchDiscoverBody_region

@dataclass
class MatchDiscoverBody(AdditionalDataHolder, Parsable):
    """
    Filters and cursor pagination for public open-match discovery.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The limit property
    limit: Optional[int] = 50
    # The cursor property
    cursor: Optional[MatchDiscoverBody_cursor] = None
    # The gameId property
    game_id: Optional[str] = None
    # The gameSlug property
    game_slug: Optional[str] = None
    # The leagueId property
    league_id: Optional[str] = None
    # The leagueSeasonId property
    league_season_id: Optional[str] = None
    # The matchType property
    match_type: Optional[MatchDiscoverBody_matchType] = None
    # The platform property
    platform: Optional[MatchDiscoverBody_platform] = None
    # The region property
    region: Optional[MatchDiscoverBody_region] = None
    # The scheduledAfter property
    scheduled_after: Optional[str] = None
    # The scheduledBefore property
    scheduled_before: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MatchDiscoverBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MatchDiscoverBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MatchDiscoverBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .match_discover_body_cursor import MatchDiscoverBody_cursor
        from .match_discover_body_match_type import MatchDiscoverBody_matchType
        from .match_discover_body_platform import MatchDiscoverBody_platform
        from .match_discover_body_region import MatchDiscoverBody_region

        from .match_discover_body_cursor import MatchDiscoverBody_cursor
        from .match_discover_body_match_type import MatchDiscoverBody_matchType
        from .match_discover_body_platform import MatchDiscoverBody_platform
        from .match_discover_body_region import MatchDiscoverBody_region

        fields: dict[str, Callable[[Any], None]] = {
            "cursor": lambda n : setattr(self, 'cursor', n.get_object_value(MatchDiscoverBody_cursor)),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "gameSlug": lambda n : setattr(self, 'game_slug', n.get_str_value()),
            "leagueId": lambda n : setattr(self, 'league_id', n.get_str_value()),
            "leagueSeasonId": lambda n : setattr(self, 'league_season_id', n.get_str_value()),
            "limit": lambda n : setattr(self, 'limit', n.get_int_value()),
            "matchType": lambda n : setattr(self, 'match_type', n.get_enum_value(MatchDiscoverBody_matchType)),
            "platform": lambda n : setattr(self, 'platform', n.get_enum_value(MatchDiscoverBody_platform)),
            "region": lambda n : setattr(self, 'region', n.get_enum_value(MatchDiscoverBody_region)),
            "scheduledAfter": lambda n : setattr(self, 'scheduled_after', n.get_str_value()),
            "scheduledBefore": lambda n : setattr(self, 'scheduled_before', n.get_str_value()),
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
        writer.write_object_value("cursor", self.cursor)
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("gameSlug", self.game_slug)
        writer.write_str_value("leagueId", self.league_id)
        writer.write_str_value("leagueSeasonId", self.league_season_id)
        writer.write_int_value("limit", self.limit)
        writer.write_enum_value("matchType", self.match_type)
        writer.write_enum_value("platform", self.platform)
        writer.write_enum_value("region", self.region)
        writer.write_str_value("scheduledAfter", self.scheduled_after)
        writer.write_str_value("scheduledBefore", self.scheduled_before)
        writer.write_additional_data_value(self.additional_data)
    

