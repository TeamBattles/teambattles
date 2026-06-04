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
    from ....models.game_match_detail_response import GameMatchDetailResponse
    from .player_stats.player_stats_request_builder import PlayerStatsRequestBuilder
    from .rosters.rosters_request_builder import RostersRequestBuilder
    from .scores.scores_request_builder import ScoresRequestBuilder
    from .status.status_request_builder import StatusRequestBuilder

class WithMatchItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /game/matches/{matchId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithMatchItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/game/matches/{matchId}", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[GameMatchDetailResponse]:
        """
        Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[GameMatchDetailResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ....models.game_match_detail_response import GameMatchDetailResponse

        return await self.request_adapter.send_async(request_info, GameMatchDetailResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> WithMatchItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithMatchItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithMatchItemRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def player_stats(self) -> PlayerStatsRequestBuilder:
        """
        The playerStats property
        """
        from .player_stats.player_stats_request_builder import PlayerStatsRequestBuilder

        return PlayerStatsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def rosters(self) -> RostersRequestBuilder:
        """
        The rosters property
        """
        from .rosters.rosters_request_builder import RostersRequestBuilder

        return RostersRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def scores(self) -> ScoresRequestBuilder:
        """
        The scores property
        """
        from .scores.scores_request_builder import ScoresRequestBuilder

        return ScoresRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def status(self) -> StatusRequestBuilder:
        """
        The status property
        """
        from .status.status_request_builder import StatusRequestBuilder

        return StatusRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class WithMatchItemRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

