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
    from ...models.delete_org_response import DeleteOrgResponse
    from ...models.error import Error
    from ...models.update_org_body import UpdateOrgBody
    from ...models.update_org_response import UpdateOrgResponse
    from .matches.matches_request_builder import MatchesRequestBuilder
    from .members.members_request_builder import MembersRequestBuilder
    from .ownership.ownership_request_builder import OwnershipRequestBuilder
    from .stats.stats_request_builder import StatsRequestBuilder
    from .teams.teams_request_builder import TeamsRequestBuilder
    from .with_identifier_get_response import WithIdentifierGetResponse

class WithIdentifierItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /orgs/{identifier}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/orgs/{identifier}", path_parameters)
    
    async def delete(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[DeleteOrgResponse]:
        """
        Deletes an organization. The caller (key owner) must be the organization owner. Requires orgs.profile:read-write.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[DeleteOrgResponse]
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
        from ...models.delete_org_response import DeleteOrgResponse

        return await self.request_adapter.send_async(request_info, DeleteOrgResponse, error_mapping)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WithIdentifierGetResponse]:
        """
        Returns an API-safe organization profile projection. Active organization members are treated as public visibility for their own organization. Requires orgs.profile:read.
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
    
    async def patch(self,body: UpdateOrgBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[UpdateOrgResponse]:
        """
        Updates an organization's profile fields. The caller (key owner) must be an organization owner or admin. Requires orgs.profile:read-write.
        param body: Fields to update on the organization. All optional.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[UpdateOrgResponse]
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
        from ...models.update_org_response import UpdateOrgResponse

        return await self.request_adapter.send_async(request_info, UpdateOrgResponse, error_mapping)
    
    def to_delete_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Deletes an organization. The caller (key owner) must be the organization owner. Requires orgs.profile:read-write.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.DELETE, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns an API-safe organization profile projection. Active organization members are treated as public visibility for their own organization. Requires orgs.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_patch_request_information(self,body: UpdateOrgBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Updates an organization's profile fields. The caller (key owner) must be an organization owner or admin. Requires orgs.profile:read-write.
        param body: Fields to update on the organization. All optional.
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
    
    @property
    def ownership(self) -> OwnershipRequestBuilder:
        """
        The ownership property
        """
        from .ownership.ownership_request_builder import OwnershipRequestBuilder

        return OwnershipRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def stats(self) -> StatsRequestBuilder:
        """
        The stats property
        """
        from .stats.stats_request_builder import StatsRequestBuilder

        return StatsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def teams(self) -> TeamsRequestBuilder:
        """
        The teams property
        """
        from .teams.teams_request_builder import TeamsRequestBuilder

        return TeamsRequestBuilder(self.request_adapter, self.path_parameters)
    
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
    

