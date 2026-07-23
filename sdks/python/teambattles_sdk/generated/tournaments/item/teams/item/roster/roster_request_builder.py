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
    from ......models.error import Error
    from ......models.tournament_team_roster_add_body import TournamentTeamRosterAddBody
    from ......models.tournament_write_ack import TournamentWriteAck
    from .item.with_roster_entry_item_request_builder import WithRosterEntryItemRequestBuilder

class RosterRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/roster
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RosterRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster", path_parameters)
    
    def by_roster_entry_id(self,roster_entry_id: str) -> WithRosterEntryItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.teams.item.roster.item collection
        param roster_entry_id: Tournament roster entry ID.
        Returns: WithRosterEntryItemRequestBuilder
        """
        if roster_entry_id is None:
            raise TypeError("roster_entry_id cannot be null.")
        from .item.with_roster_entry_item_request_builder import WithRosterEntryItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["rosterEntryId"] = roster_entry_id
        return WithRosterEntryItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def post(self,body: TournamentTeamRosterAddBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
        param body: Competitor roster addition payload.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ......models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ......models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_post_request_information(self,body: TournamentTeamRosterAddBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
        param body: Competitor roster addition payload.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
        return request_info
    
    def with_url(self,raw_url: str) -> RosterRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: RosterRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return RosterRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class RosterRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

