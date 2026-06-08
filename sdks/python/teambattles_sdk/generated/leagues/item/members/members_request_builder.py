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
    from ....models.league_members import LeagueMembers
    from .add.add_request_builder import AddRequestBuilder
    from .item.with_member_item_request_builder import WithMemberItemRequestBuilder

class MembersRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/members
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MembersRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/members", path_parameters)
    
    def by_member_id(self,member_id: str) -> WithMemberItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leagues.item.members.item collection
        param member_id: League staff membership ID.
        Returns: WithMemberItemRequestBuilder
        """
        if member_id is None:
            raise TypeError("member_id cannot be null.")
        from .item.with_member_item_request_builder import WithMemberItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["memberId"] = member_id
        return WithMemberItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def post(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[LeagueMembers]:
        """
        Returns staff members for a league resolved by slug. The API key owner must have a MEMBER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[LeagueMembers]
        """
        request_info = self.to_post_request_information(
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
        from ....models.league_members import LeagueMembers

        return await self.request_adapter.send_async(request_info, LeagueMembers, error_mapping)
    
    def to_post_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns staff members for a league resolved by slug. The API key owner must have a MEMBER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> MembersRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: MembersRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return MembersRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def add(self) -> AddRequestBuilder:
        """
        The add property
        """
        from .add.add_request_builder import AddRequestBuilder

        return AddRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class MembersRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

