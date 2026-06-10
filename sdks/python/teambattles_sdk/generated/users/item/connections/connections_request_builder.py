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
    from .connections_get_response import ConnectionsGetResponse

class ConnectionsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /users/{identifier}/connections
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new ConnectionsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/users/{identifier}/connections", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[ConnectionsGetResponse]:
        """
        Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[ConnectionsGetResponse]
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
        from .connections_get_response import ConnectionsGetResponse

        return await self.request_adapter.send_async(request_info, ConnectionsGetResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> ConnectionsRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: ConnectionsRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return ConnectionsRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class ConnectionsRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

