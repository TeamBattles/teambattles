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
    from .....models.error import Error
    from .....models.game_batch_scores_body import GameBatchScoresBody
    from .....models.game_batch_scores_response import GameBatchScoresResponse
    from .....models.game_scores_response import GameScoresResponse
    from .item.with_map_index_item_request_builder import WithMapIndexItemRequestBuilder

class ScoresRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /game/matches/{matchId}/scores
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new ScoresRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/game/matches/{matchId}/scores", path_parameters)
    
    def by_map_index(self,map_index: str) -> WithMapIndexItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.game.matches.item.scores.item collection
        param map_index: Zero-based index of the map within the series.
        Returns: WithMapIndexItemRequestBuilder
        """
        if map_index is None:
            raise TypeError("map_index cannot be null.")
        from .item.with_map_index_item_request_builder import WithMapIndexItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["mapIndex"] = map_index
        return WithMapIndexItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[GameScoresResponse]:
        """
        Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[GameScoresResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from .....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .....models.game_scores_response import GameScoresResponse

        return await self.request_adapter.send_async(request_info, GameScoresResponse, error_mapping)
    
    async def post(self,body: GameBatchScoresBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[GameBatchScoresResponse]:
        """
        Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
        param body: Request body for submitting one or more map scores in a single call.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[GameBatchScoresResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from .....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .....models.game_batch_scores_response import GameBatchScoresResponse

        return await self.request_adapter.send_async(request_info, GameBatchScoresResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_post_request_information(self,body: GameBatchScoresBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
        param body: Request body for submitting one or more map scores in a single call.
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
    
    def with_url(self,raw_url: str) -> ScoresRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: ScoresRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return ScoresRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class ScoresRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class ScoresRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

