from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class LeagueDashboardStatsResponse_stats(Parsable):
    # The activeSeasons property
    active_seasons: Optional[int] = None
    # The openTickets property
    open_tickets: Optional[int] = None
    # The pendingApplications property
    pending_applications: Optional[int] = None
    # The teamCount property
    team_count: Optional[int] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueDashboardStatsResponse_stats:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueDashboardStatsResponse_stats
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueDashboardStatsResponse_stats()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "activeSeasons": lambda n : setattr(self, 'active_seasons', n.get_int_value()),
            "openTickets": lambda n : setattr(self, 'open_tickets', n.get_int_value()),
            "pendingApplications": lambda n : setattr(self, 'pending_applications', n.get_int_value()),
            "teamCount": lambda n : setattr(self, 'team_count', n.get_int_value()),
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
        writer.write_int_value("activeSeasons", self.active_seasons)
        writer.write_int_value("openTickets", self.open_tickets)
        writer.write_int_value("pendingApplications", self.pending_applications)
        writer.write_int_value("teamCount", self.team_count)
    

