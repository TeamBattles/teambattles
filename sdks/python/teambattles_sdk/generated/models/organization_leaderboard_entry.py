from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .api_organization_summary import ApiOrganizationSummary
    from .organization_leaderboard_entry_game_slug import OrganizationLeaderboardEntry_gameSlug
    from .organization_leaderboard_entry_stats import OrganizationLeaderboardEntry_stats

@dataclass
class OrganizationLeaderboardEntry(Parsable):
    """
    Organization leaderboard row.
    """
    # The gameSlug property
    game_slug: Optional[OrganizationLeaderboardEntry_gameSlug] = None
    # Organization ID.
    id: Optional[str] = None
    # Small API-safe organization summary.
    organization: Optional[ApiOrganizationSummary] = None
    # The rank property
    rank: Optional[int] = None
    # The stats property
    stats: Optional[OrganizationLeaderboardEntry_stats] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> OrganizationLeaderboardEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: OrganizationLeaderboardEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return OrganizationLeaderboardEntry()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .api_organization_summary import ApiOrganizationSummary
        from .organization_leaderboard_entry_game_slug import OrganizationLeaderboardEntry_gameSlug
        from .organization_leaderboard_entry_stats import OrganizationLeaderboardEntry_stats

        from .api_organization_summary import ApiOrganizationSummary
        from .organization_leaderboard_entry_game_slug import OrganizationLeaderboardEntry_gameSlug
        from .organization_leaderboard_entry_stats import OrganizationLeaderboardEntry_stats

        fields: dict[str, Callable[[Any], None]] = {
            "gameSlug": lambda n : setattr(self, 'game_slug', n.get_object_value(OrganizationLeaderboardEntry_gameSlug)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "organization": lambda n : setattr(self, 'organization', n.get_object_value(ApiOrganizationSummary)),
            "rank": lambda n : setattr(self, 'rank', n.get_int_value()),
            "stats": lambda n : setattr(self, 'stats', n.get_object_value(OrganizationLeaderboardEntry_stats)),
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
        writer.write_object_value("gameSlug", self.game_slug)
        writer.write_str_value("id", self.id)
        writer.write_object_value("organization", self.organization)
        writer.write_int_value("rank", self.rank)
        writer.write_object_value("stats", self.stats)
