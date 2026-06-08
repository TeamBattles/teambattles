from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .league_apply_eligibility_eligibility_eligible_teams import LeagueApplyEligibility_eligibility_eligibleTeams
    from .league_apply_eligibility_eligibility_pending_teams import LeagueApplyEligibility_eligibility_pendingTeams

@dataclass
class LeagueApplyEligibility_eligibility(Parsable):
    """
    API key owner's apply-to-join eligibility.
    """
    # The eligibleTeams property
    eligible_teams: Optional[list[LeagueApplyEligibility_eligibility_eligibleTeams]] = None
    # The hasApprovedTeamHere property
    has_approved_team_here: Optional[bool] = None
    # The isAuthed property
    is_authed: Optional[bool] = None
    # The pendingTeams property
    pending_teams: Optional[list[LeagueApplyEligibility_eligibility_pendingTeams]] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> LeagueApplyEligibility_eligibility:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: LeagueApplyEligibility_eligibility
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return LeagueApplyEligibility_eligibility()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .league_apply_eligibility_eligibility_eligible_teams import LeagueApplyEligibility_eligibility_eligibleTeams
        from .league_apply_eligibility_eligibility_pending_teams import LeagueApplyEligibility_eligibility_pendingTeams

        from .league_apply_eligibility_eligibility_eligible_teams import LeagueApplyEligibility_eligibility_eligibleTeams
        from .league_apply_eligibility_eligibility_pending_teams import LeagueApplyEligibility_eligibility_pendingTeams

        fields: dict[str, Callable[[Any], None]] = {
            "eligibleTeams": lambda n : setattr(self, 'eligible_teams', n.get_collection_of_object_values(LeagueApplyEligibility_eligibility_eligibleTeams)),
            "hasApprovedTeamHere": lambda n : setattr(self, 'has_approved_team_here', n.get_bool_value()),
            "isAuthed": lambda n : setattr(self, 'is_authed', n.get_bool_value()),
            "pendingTeams": lambda n : setattr(self, 'pending_teams', n.get_collection_of_object_values(LeagueApplyEligibility_eligibility_pendingTeams)),
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
        writer.write_collection_of_object_values("eligibleTeams", self.eligible_teams)
        writer.write_bool_value("hasApprovedTeamHere", self.has_approved_team_here)
        writer.write_bool_value("isAuthed", self.is_authed)
        writer.write_collection_of_object_values("pendingTeams", self.pending_teams)
    

