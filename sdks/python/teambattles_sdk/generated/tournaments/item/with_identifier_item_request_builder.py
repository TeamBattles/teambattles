from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from kiota_abstractions.default_query_parameters import QueryParameters
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.method import Method
from kiota_abstractions.request_adapter import RequestAdapter
from kiota_abstractions.request_information import RequestInformation
from kiota_abstractions.request_option import RequestOption
from kiota_abstractions.serialization import Parsable, ParsableFactory
from typing import Any, Optional, TYPE_CHECKING, Union
from warnings import warn

if TYPE_CHECKING:
    from ...models.error import Error
    from ...models.tournament_profile_response import TournamentProfileResponse
    from .activity_feed.activity_feed_request_builder import ActivityFeedRequestBuilder
    from .applications.applications_request_builder import ApplicationsRequestBuilder
    from .bracket.bracket_request_builder import BracketRequestBuilder
    from .cancel.cancel_request_builder import CancelRequestBuilder
    from .free_agency.free_agency_request_builder import FreeAgencyRequestBuilder
    from .free_agents.free_agents_request_builder import FreeAgentsRequestBuilder
    from .invites.invites_request_builder import InvitesRequestBuilder
    from .league_points.league_points_request_builder import LeaguePointsRequestBuilder
    from .me.me_request_builder import MeRequestBuilder
    from .nodes.nodes_request_builder import NodesRequestBuilder
    from .participants.participants_request_builder import ParticipantsRequestBuilder
    from .regenerate_matches.regenerate_matches_request_builder import RegenerateMatchesRequestBuilder
    from .registration.registration_request_builder import RegistrationRequestBuilder
    from .roster_entries.roster_entries_request_builder import RosterEntriesRequestBuilder
    from .rounds.rounds_request_builder import RoundsRequestBuilder
    from .staff.staff_request_builder import StaffRequestBuilder
    from .start.start_request_builder import StartRequestBuilder
    from .submit_for_approval.submit_for_approval_request_builder import SubmitForApprovalRequestBuilder
    from .teams.teams_request_builder import TeamsRequestBuilder
    from .update.update_request_builder import UpdateRequestBuilder

class WithIdentifierItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentProfileResponse]:
        """
        Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentProfileResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ...models.tournament_profile_response import TournamentProfileResponse

        return await self.request_adapter.send_async(request_info, TournamentProfileResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> WithIdentifierItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithIdentifierItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithIdentifierItemRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def activity_feed(self) -> ActivityFeedRequestBuilder:
        """
        The activityFeed property
        """
        from .activity_feed.activity_feed_request_builder import ActivityFeedRequestBuilder

        return ActivityFeedRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def applications(self) -> ApplicationsRequestBuilder:
        """
        The applications property
        """
        from .applications.applications_request_builder import ApplicationsRequestBuilder

        return ApplicationsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def bracket(self) -> BracketRequestBuilder:
        """
        The bracket property
        """
        from .bracket.bracket_request_builder import BracketRequestBuilder

        return BracketRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def cancel(self) -> CancelRequestBuilder:
        """
        The cancel property
        """
        from .cancel.cancel_request_builder import CancelRequestBuilder

        return CancelRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def free_agency(self) -> FreeAgencyRequestBuilder:
        """
        The freeAgency property
        """
        from .free_agency.free_agency_request_builder import FreeAgencyRequestBuilder

        return FreeAgencyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def free_agents(self) -> FreeAgentsRequestBuilder:
        """
        The freeAgents property
        """
        from .free_agents.free_agents_request_builder import FreeAgentsRequestBuilder

        return FreeAgentsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def invites(self) -> InvitesRequestBuilder:
        """
        The invites property
        """
        from .invites.invites_request_builder import InvitesRequestBuilder

        return InvitesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def league_points(self) -> LeaguePointsRequestBuilder:
        """
        The leaguePoints property
        """
        from .league_points.league_points_request_builder import LeaguePointsRequestBuilder

        return LeaguePointsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def me(self) -> MeRequestBuilder:
        """
        The me property
        """
        from .me.me_request_builder import MeRequestBuilder

        return MeRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def nodes(self) -> NodesRequestBuilder:
        """
        The nodes property
        """
        from .nodes.nodes_request_builder import NodesRequestBuilder

        return NodesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def participants(self) -> ParticipantsRequestBuilder:
        """
        The participants property
        """
        from .participants.participants_request_builder import ParticipantsRequestBuilder

        return ParticipantsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def regenerate_matches(self) -> RegenerateMatchesRequestBuilder:
        """
        The regenerateMatches property
        """
        from .regenerate_matches.regenerate_matches_request_builder import RegenerateMatchesRequestBuilder

        return RegenerateMatchesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def registration(self) -> RegistrationRequestBuilder:
        """
        The registration property
        """
        from .registration.registration_request_builder import RegistrationRequestBuilder

        return RegistrationRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def roster_entries(self) -> RosterEntriesRequestBuilder:
        """
        The rosterEntries property
        """
        from .roster_entries.roster_entries_request_builder import RosterEntriesRequestBuilder

        return RosterEntriesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def rounds(self) -> RoundsRequestBuilder:
        """
        The rounds property
        """
        from .rounds.rounds_request_builder import RoundsRequestBuilder

        return RoundsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def staff(self) -> StaffRequestBuilder:
        """
        The staff property
        """
        from .staff.staff_request_builder import StaffRequestBuilder

        return StaffRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def start(self) -> StartRequestBuilder:
        """
        The start property
        """
        from .start.start_request_builder import StartRequestBuilder

        return StartRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def submit_for_approval(self) -> SubmitForApprovalRequestBuilder:
        """
        The submitForApproval property
        """
        from .submit_for_approval.submit_for_approval_request_builder import SubmitForApprovalRequestBuilder

        return SubmitForApprovalRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def teams(self) -> TeamsRequestBuilder:
        """
        The teams property
        """
        from .teams.teams_request_builder import TeamsRequestBuilder

        return TeamsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def update(self) -> UpdateRequestBuilder:
        """
        The update property
        """
        from .update.update_request_builder import UpdateRequestBuilder

        return UpdateRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class WithIdentifierItemRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

