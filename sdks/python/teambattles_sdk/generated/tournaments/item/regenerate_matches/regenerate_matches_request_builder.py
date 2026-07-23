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
    from ....models.error import Error
    from ....models.tournament_regenerate_matches_request_body import TournamentRegenerateMatchesRequestBody
    from ....models.tournament_regenerate_matches_response import TournamentRegenerateMatchesResponse

class RegenerateMatchesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/regenerate-matches
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RegenerateMatchesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/regenerate-matches", path_parameters)
    
    async def post(self,body: TournamentRegenerateMatchesRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentRegenerateMatchesResponse]:
        """
        Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
        param body: Confirmation payload for the match-regeneration repair lever.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentRegenerateMatchesResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ....models.error import Error

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
        from ....models.tournament_regenerate_matches_response import TournamentRegenerateMatchesResponse

        return await self.request_adapter.send_async(request_info, TournamentRegenerateMatchesResponse, error_mapping)
    
    def to_post_request_information(self,body: TournamentRegenerateMatchesRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
        param body: Confirmation payload for the match-regeneration repair lever.
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
    
    def with_url(self,raw_url: str) -> RegenerateMatchesRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: RegenerateMatchesRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return RegenerateMatchesRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class RegenerateMatchesRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

