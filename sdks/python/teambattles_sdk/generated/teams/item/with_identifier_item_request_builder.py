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
    from ...models.disband_team_response import DisbandTeamResponse
    from ...models.error import Error
    from ...models.update_team_body import UpdateTeamBody
    from ...models.update_team_response import UpdateTeamResponse
    from .captaincy.captaincy_request_builder import CaptaincyRequestBuilder
    from .matches.matches_request_builder import MatchesRequestBuilder
    from .members.members_request_builder import MembersRequestBuilder
    from .with_identifier_get_response import WithIdentifierGetResponse

class WithIdentifierItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /teams/{identifier}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/teams/{identifier}", path_parameters)
    
    async def delete(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[DisbandTeamResponse]:
        """
        Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[DisbandTeamResponse]
        """
        request_info = self.to_delete_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ...models.disband_team_response import DisbandTeamResponse

        return await self.request_adapter.send_async(request_info, DisbandTeamResponse, error_mapping)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WithIdentifierGetResponse]:
        """
        Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[WithIdentifierGetResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .with_identifier_get_response import WithIdentifierGetResponse

        return await self.request_adapter.send_async(request_info, WithIdentifierGetResponse, error_mapping)
    
    async def patch(self,body: UpdateTeamBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[UpdateTeamResponse]:
        """
        Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
        param body: Fields to update on the team. All optional.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[UpdateTeamResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_patch_request_information(
            body, request_configuration
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
        from ...models.update_team_response import UpdateTeamResponse

        return await self.request_adapter.send_async(request_info, UpdateTeamResponse, error_mapping)
    
    def to_delete_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.DELETE, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_patch_request_information(self,body: UpdateTeamBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
        param body: Fields to update on the team. All optional.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = RequestInformation(Method.PATCH, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
        return request_info
    
    def with_url(self,raw_url: str) -> WithIdentifierItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithIdentifierItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithIdentifierItemRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def captaincy(self) -> CaptaincyRequestBuilder:
        """
        The captaincy property
        """
        from .captaincy.captaincy_request_builder import CaptaincyRequestBuilder

        return CaptaincyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def matches(self) -> MatchesRequestBuilder:
        """
        The matches property
        """
        from .matches.matches_request_builder import MatchesRequestBuilder

        return MatchesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def members(self) -> MembersRequestBuilder:
        """
        The members property
        """
        from .members.members_request_builder import MembersRequestBuilder

        return MembersRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class WithIdentifierItemRequestBuilderDeleteRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class WithIdentifierItemRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class WithIdentifierItemRequestBuilderPatchRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

