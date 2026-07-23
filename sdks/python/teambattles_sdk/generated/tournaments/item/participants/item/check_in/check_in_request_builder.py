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
    from ......models.tournament_write_ack import TournamentWriteAck

class CheckInRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/check-in
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new CheckInRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in", path_parameters)
    
    async def post(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        request_info = self.to_post_request_information(
            request_configuration
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
    
    def to_post_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> CheckInRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: CheckInRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return CheckInRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class CheckInRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

