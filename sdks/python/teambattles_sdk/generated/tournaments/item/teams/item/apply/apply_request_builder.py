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
    from ......models.tournament_team_entry_body import TournamentTeamEntryBody
    from ......models.tournament_team_entry_response import TournamentTeamEntryResponse

class ApplyRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/apply
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new ApplyRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/apply", path_parameters)
    
    async def post(self,body: TournamentTeamEntryBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentTeamEntryResponse]:
        """
        Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
        param body: Tournament entry payload for a team the caller leads.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentTeamEntryResponse]
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
            "409": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ......models.tournament_team_entry_response import TournamentTeamEntryResponse

        return await self.request_adapter.send_async(request_info, TournamentTeamEntryResponse, error_mapping)
    
    def to_post_request_information(self,body: TournamentTeamEntryBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
        param body: Tournament entry payload for a team the caller leads.
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
    
    def with_url(self,raw_url: str) -> ApplyRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: ApplyRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return ApplyRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class ApplyRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

