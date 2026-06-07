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
    from .connections.connections_request_builder import ConnectionsRequestBuilder
    from .organizations.organizations_request_builder import OrganizationsRequestBuilder
    from .stats.stats_request_builder import StatsRequestBuilder
    from .teams.teams_request_builder import TeamsRequestBuilder
    from .trophies.trophies_request_builder import TrophiesRequestBuilder
    from .with_identifier_get_response import WithIdentifierGetResponse

class WithIdentifierItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /users/{identifier}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/users/{identifier}", path_parameters)

    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WithIdentifierGetResponse]:
        """
        Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
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

    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
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
    def connections(self) -> ConnectionsRequestBuilder:
        """
        The connections property
        """
        from .connections.connections_request_builder import ConnectionsRequestBuilder

        return ConnectionsRequestBuilder(self.request_adapter, self.path_parameters)

    @property
    def organizations(self) -> OrganizationsRequestBuilder:
        """
        The organizations property
        """
        from .organizations.organizations_request_builder import OrganizationsRequestBuilder

        return OrganizationsRequestBuilder(self.request_adapter, self.path_parameters)

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

    @property
    def trophies(self) -> TrophiesRequestBuilder:
        """
        The trophies property
        """
        from .trophies.trophies_request_builder import TrophiesRequestBuilder

        return TrophiesRequestBuilder(self.request_adapter, self.path_parameters)

    @dataclass
    class WithIdentifierItemRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
