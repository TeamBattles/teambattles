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
    from ......models.tournament_organizer_roster_add_body import TournamentOrganizerRosterAddBody
    from ......models.tournament_write_ack import TournamentWriteAck

class RosterRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/roster
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RosterRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/roster", path_parameters)
    
    async def post(self,body: TournamentOrganizerRosterAddBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Adds a user to the named participant's tournament roster as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient here, because editing any participant's roster carries the same weight as issuing an invite; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. Answers 400 error_invalid_input when the user is not an active member of that team or is already rostered in this tournament. Requires the tournaments registration capability.
        param body: Organizer roster addition payload.
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
    
    def to_post_request_information(self,body: TournamentOrganizerRosterAddBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Adds a user to the named participant's tournament roster as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient here, because editing any participant's roster carries the same weight as issuing an invite; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. Answers 400 error_invalid_input when the user is not an active member of that team or is already rostered in this tournament. Requires the tournaments registration capability.
        param body: Organizer roster addition payload.
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
    

