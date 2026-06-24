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
    from .item.with_user_item_request_builder import WithUserItemRequestBuilder
    from .members_get_response import MembersGetResponse

class MembersRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /teams/{identifier}/members
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MembersRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/teams/{identifier}/members", path_parameters)
    
    def by_user_id(self,user_id: str) -> WithUserItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.teams.item.members.item collection
        param user_id: Convex user ID of the member to remove.
        Returns: WithUserItemRequestBuilder
        """
        if user_id is None:
            raise TypeError("user_id cannot be null.")
        from .item.with_user_item_request_builder import WithUserItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["userId"] = user_id
        return WithUserItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[MembersGetResponse]:
        """
        Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[MembersGetResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .members_get_response import MembersGetResponse

        return await self.request_adapter.send_async(request_info, MembersGetResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
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
    
    @dataclass
    class MembersRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

