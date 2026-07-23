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

class WithdrawRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/withdraw
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithdrawRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw", path_parameters)
    
    async def post(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
        Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> WithdrawRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithdrawRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithdrawRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class WithdrawRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

