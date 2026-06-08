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
    from ...models.leaderboard_sort_by import LeaderboardSortBy
    from ...models.organization_leaderboard_response import OrganizationLeaderboardResponse
    from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

class OrganizationsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leaderboards/organizations
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new OrganizationsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leaderboards/organizations{?gameSlug*,limit*,sortBy*}", path_parameters)
    
    def by_identifier(self,identifier: str) -> WithIdentifierItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leaderboards.organizations.item collection
        param identifier: Organization slug or Convex organization ID.
        Returns: WithIdentifierItemRequestBuilder
        """
        if identifier is None:
            raise TypeError("identifier cannot be null.")
        from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["identifier"] = identifier
        return WithIdentifierItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[OrganizationsRequestBuilderGetQueryParameters]] = None) -> Optional[OrganizationLeaderboardResponse]:
        """
        Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[OrganizationLeaderboardResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ...models.error import Error

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
        from ...models.organization_leaderboard_response import OrganizationLeaderboardResponse

        return await self.request_adapter.send_async(request_info, OrganizationLeaderboardResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[OrganizationsRequestBuilderGetQueryParameters]] = None) -> RequestInformation:
        """
        Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> OrganizationsRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: OrganizationsRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return OrganizationsRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class OrganizationsRequestBuilderGetQueryParameters():
        """
        Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
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
            if original_name == "limit":
                return "limit"
            return original_name
        
        game_slug: Optional[str] = None

        limit: Optional[int] = None

        sort_by: Optional[LeaderboardSortBy] = None

    
    @dataclass
    class OrganizationsRequestBuilderGetRequestConfiguration(RequestConfiguration[OrganizationsRequestBuilderGetQueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

