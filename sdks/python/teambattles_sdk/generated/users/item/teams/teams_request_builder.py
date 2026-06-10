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
    from .teams_get_response import TeamsGetResponse

class TeamsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /users/{identifier}/teams
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new TeamsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/users/{identifier}/teams", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TeamsGetResponse]:
        """
        Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TeamsGetResponse]
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
        from .teams_get_response import TeamsGetResponse

        return await self.request_adapter.send_async(request_info, TeamsGetResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> TeamsRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: TeamsRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return TeamsRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class TeamsRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

