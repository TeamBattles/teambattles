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
    from ..models.discover_leagues_request_body import DiscoverLeaguesRequestBody
    from ..models.error import Error
    from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder
    from .leagues_post_response import LeaguesPostResponse

class LeaguesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new LeaguesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues", path_parameters)
    
    def by_identifier(self,identifier: str) -> WithIdentifierItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leagues.item collection
        param identifier: League slug.
        Returns: WithIdentifierItemRequestBuilder
        """
        if identifier is None:
            raise TypeError("identifier cannot be null.")
        from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["identifier"] = identifier
        return WithIdentifierItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def post(self,body: DiscoverLeaguesRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[LeaguesPostResponse]:
        """
        Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
        param body: Filters and offset pagination for discovering leagues.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[LeaguesPostResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ..models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .leagues_post_response import LeaguesPostResponse

        return await self.request_adapter.send_async(request_info, LeaguesPostResponse, error_mapping)
    
    def to_post_request_information(self,body: DiscoverLeaguesRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
        param body: Filters and offset pagination for discovering leagues.
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
    
    def with_url(self,raw_url: str) -> LeaguesRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: LeaguesRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return LeaguesRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class LeaguesRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

