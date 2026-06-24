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
    from ..models.create_team_body import CreateTeamBody
    from ..models.create_team_response import CreateTeamResponse
    from ..models.error import Error
    from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

class TeamsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /teams
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new TeamsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/teams", path_parameters)
    
    def by_identifier(self,identifier: str) -> WithIdentifierItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.teams.item collection
        param identifier: Team slug or Convex team ID.
        Returns: WithIdentifierItemRequestBuilder
        """
        if identifier is None:
            raise TypeError("identifier cannot be null.")
        from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["identifier"] = identifier
        return WithIdentifierItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def post(self,body: CreateTeamBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[CreateTeamResponse]:
        """
        Creates a new team as the personal API key owner. The owner must manage the owning organization. Role ceilings and cascades are enforced exactly as in the web app. Requires teams.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
        param body: Creates a new team as the API key owner.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[CreateTeamResponse]
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
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ..models.create_team_response import CreateTeamResponse

        return await self.request_adapter.send_async(request_info, CreateTeamResponse, error_mapping)
    
    def to_post_request_information(self,body: CreateTeamBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Creates a new team as the personal API key owner. The owner must manage the owning organization. Role ceilings and cascades are enforced exactly as in the web app. Requires teams.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
        param body: Creates a new team as the API key owner.
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
    class TeamsRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

