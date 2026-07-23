from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .my_tournament_actable_team import MyTournamentActableTeam
    from .my_tournament_free_agent import MyTournamentFreeAgent
    from .my_tournament_invite import MyTournamentInvite
    from .my_tournament_offer import MyTournamentOffer
    from .my_tournament_participant import MyTournamentParticipant
    from .my_tournament_roster_entry import MyTournamentRosterEntry

@dataclass
class MyTournamentEntry(Parsable):
    """
    The API key owner's own state in one tournament.
    """
    # Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
    actable_teams: Optional[list[MyTournamentActableTeam]] = None
    # The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
    free_agent: Optional[MyTournamentFreeAgent] = None
    # Every invite addressed to an actable team, in all four states.
    invites: Optional[list[MyTournamentInvite]] = None
    # Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
    offers: Optional[list[MyTournamentOffer]] = None
    # Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
    participants: Optional[list[MyTournamentParticipant]] = None
    # True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
    required_connection_missing: Optional[bool] = None
    # Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
    roster_entries: Optional[list[MyTournamentRosterEntry]] = None
    # The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
    slug: Optional[str] = None
    # Tournament ID.
    tournament_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> MyTournamentEntry:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: MyTournamentEntry
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return MyTournamentEntry()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .my_tournament_actable_team import MyTournamentActableTeam
        from .my_tournament_free_agent import MyTournamentFreeAgent
        from .my_tournament_invite import MyTournamentInvite
        from .my_tournament_offer import MyTournamentOffer
        from .my_tournament_participant import MyTournamentParticipant
        from .my_tournament_roster_entry import MyTournamentRosterEntry

        from .my_tournament_actable_team import MyTournamentActableTeam
        from .my_tournament_free_agent import MyTournamentFreeAgent
        from .my_tournament_invite import MyTournamentInvite
        from .my_tournament_offer import MyTournamentOffer
        from .my_tournament_participant import MyTournamentParticipant
        from .my_tournament_roster_entry import MyTournamentRosterEntry

        fields: dict[str, Callable[[Any], None]] = {
            "actableTeams": lambda n : setattr(self, 'actable_teams', n.get_collection_of_object_values(MyTournamentActableTeam)),
            "freeAgent": lambda n : setattr(self, 'free_agent', n.get_object_value(MyTournamentFreeAgent)),
            "invites": lambda n : setattr(self, 'invites', n.get_collection_of_object_values(MyTournamentInvite)),
            "offers": lambda n : setattr(self, 'offers', n.get_collection_of_object_values(MyTournamentOffer)),
            "participants": lambda n : setattr(self, 'participants', n.get_collection_of_object_values(MyTournamentParticipant)),
            "requiredConnectionMissing": lambda n : setattr(self, 'required_connection_missing', n.get_bool_value()),
            "rosterEntries": lambda n : setattr(self, 'roster_entries', n.get_collection_of_object_values(MyTournamentRosterEntry)),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "tournamentId": lambda n : setattr(self, 'tournament_id', n.get_str_value()),
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
        writer.write_collection_of_object_values("actableTeams", self.actable_teams)
        writer.write_object_value("freeAgent", self.free_agent)
        writer.write_collection_of_object_values("invites", self.invites)
        writer.write_collection_of_object_values("offers", self.offers)
        writer.write_collection_of_object_values("participants", self.participants)
        writer.write_bool_value("requiredConnectionMissing", self.required_connection_missing)
        writer.write_collection_of_object_values("rosterEntries", self.roster_entries)
        writer.write_str_value("slug", self.slug)
        writer.write_str_value("tournamentId", self.tournament_id)
    

