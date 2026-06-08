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
    from ...models.list_game_matches_body import ListGameMatchesBody
    from .batch_scores.batch_scores_request_builder import BatchScoresRequestBuilder
    from .create.create_request_builder import CreateRequestBuilder
    from .item.with_match_item_request_builder import WithMatchItemRequestBuilder
    from .matches_post_response import MatchesPostResponse

class MatchesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /game/matches
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MatchesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/game/matches", path_parameters)
    
    def by_match_id(self,match_id: str) -> WithMatchItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.game.matches.item collection
        param match_id: Match ID.
        Returns: WithMatchItemRequestBuilder
        """
        if match_id is None:
            raise TypeError("match_id cannot be null.")
        from .item.with_match_item_request_builder import WithMatchItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["matchId"] = match_id
        return WithMatchItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def post(self,body: ListGameMatchesBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[MatchesPostResponse]:
        """
        Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
        param body: Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[MatchesPostResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .matches_post_response import MatchesPostResponse

        return await self.request_adapter.send_async(request_info, MatchesPostResponse, error_mapping)
    
    def to_post_request_information(self,body: ListGameMatchesBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
        param body: Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
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
    
    def with_url(self,raw_url: str) -> MatchesRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: MatchesRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return MatchesRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def batch_scores(self) -> BatchScoresRequestBuilder:
        """
        The batchScores property
        """
        from .batch_scores.batch_scores_request_builder import BatchScoresRequestBuilder

        return BatchScoresRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def create(self) -> CreateRequestBuilder:
        """
        The create property
        """
        from .create.create_request_builder import CreateRequestBuilder

        return CreateRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class MatchesRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

