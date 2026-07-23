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
    from ......models.tournament_round_schedule_request_body import TournamentRoundScheduleRequestBody
    from ......models.tournament_round_schedule_response import TournamentRoundScheduleResponse

class ScheduleRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/rounds/{roundId}/schedule
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new ScheduleRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}/schedule", path_parameters)
    
    async def post(self,body: TournamentRoundScheduleRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentRoundScheduleResponse]:
        """
        Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
        param body: Round schedule payload.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentRoundScheduleResponse]
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
        from ......models.tournament_round_schedule_response import TournamentRoundScheduleResponse

        return await self.request_adapter.send_async(request_info, TournamentRoundScheduleResponse, error_mapping)
    
    def to_post_request_information(self,body: TournamentRoundScheduleRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
        param body: Round schedule payload.
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
    
    def with_url(self,raw_url: str) -> ScheduleRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: ScheduleRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return ScheduleRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class ScheduleRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

