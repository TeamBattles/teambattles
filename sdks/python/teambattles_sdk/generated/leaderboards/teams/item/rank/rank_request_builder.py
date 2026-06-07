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
    from .....models.leaderboard_rank_response import LeaderboardRankResponse
    from .....models.leaderboard_sort_by import LeaderboardSortBy

class RankRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leaderboards/teams/{identifier}/rank
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RankRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leaderboards/teams/{identifier}/rank{?gameSlug*,sortBy*}", path_parameters)

    async def get(self,request_configuration: Optional[RequestConfiguration[RankRequestBuilderGetQueryParameters]] = None) -> Optional[LeaderboardRankResponse]:
        """
        Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[LeaderboardRankResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from .....models.error import Error

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
        from .....models.leaderboard_rank_response import LeaderboardRankResponse

        return await self.request_adapter.send_async(request_info, LeaderboardRankResponse, error_mapping)

    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[RankRequestBuilderGetQueryParameters]] = None) -> RequestInformation:
        """
        Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info

    def with_url(self,raw_url: str) -> RankRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: RankRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return RankRequestBuilder(self.request_adapter, raw_url)

    @dataclass
    class RankRequestBuilderGetQueryParameters():
        """
        Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
        """
        def get_query_parameter(self,original_name: str) -> str:
            """
            Maps the query parameters names to their encoded names for the URI template parsing.
            param original_name: The original query parameter name in the class.
            Returns: str
            """
            if original_name is None:
                raise TypeError("original_name cannot be null.")
            if original_name == "game_slug":
                return "gameSlug"
            if original_name == "sort_by":
                return "sortBy"
            return original_name

        game_slug: Optional[str] = None

        sort_by: Optional[LeaderboardSortBy] = None


    @dataclass
    class RankRequestBuilderGetRequestConfiguration(RequestConfiguration[RankRequestBuilderGetQueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
