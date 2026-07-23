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
    from ......models.tournament_override_node_result_body import TournamentOverrideNodeResultBody
    from ......models.tournament_write_ack import TournamentWriteAck

class OverrideResultRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}/override-result
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new OverrideResultRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result", path_parameters)
    
    async def post(self,body: TournamentOverrideNodeResultBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
        param body: Bracket node result override payload.
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
            "409": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ......models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_post_request_information(self,body: TournamentOverrideNodeResultBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
        param body: Bracket node result override payload.
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
    
    def with_url(self,raw_url: str) -> OverrideResultRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: OverrideResultRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return OverrideResultRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class OverrideResultRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

