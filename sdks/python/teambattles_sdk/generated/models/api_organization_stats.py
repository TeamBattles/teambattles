from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ApiOrganizationStats(Parsable):
    """
    API-safe organization aggregate stats.
    """
    # The losses property
    losses: Optional[int] = None
    # The matchesPlayed property
    matches_played: Optional[int] = None
    # The members property
    members: Optional[int] = None
    # The organizationId property
    organization_id: Optional[str] = None
    # The teams property
    teams: Optional[int] = None
    # The winRate property
    win_rate: Optional[float] = None
    # The wins property
    wins: Optional[int] = None

    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ApiOrganizationStats:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ApiOrganizationStats
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ApiOrganizationStats()

    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "losses": lambda n : setattr(self, 'losses', n.get_int_value()),
            "matchesPlayed": lambda n : setattr(self, 'matches_played', n.get_int_value()),
            "members": lambda n : setattr(self, 'members', n.get_int_value()),
            "organizationId": lambda n : setattr(self, 'organization_id', n.get_str_value()),
            "teams": lambda n : setattr(self, 'teams', n.get_int_value()),
            "winRate": lambda n : setattr(self, 'win_rate', n.get_float_value()),
            "wins": lambda n : setattr(self, 'wins', n.get_int_value()),
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
        writer.write_int_value("losses", self.losses)
        writer.write_int_value("matchesPlayed", self.matches_played)
        writer.write_int_value("members", self.members)
        writer.write_str_value("organizationId", self.organization_id)
        writer.write_int_value("teams", self.teams)
        writer.write_float_value("winRate", self.win_rate)
        writer.write_int_value("wins", self.wins)
