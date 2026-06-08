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
    from ..models.create_ticket_request_body import CreateTicketRequestBody
    from ..models.create_ticket_response import CreateTicketResponse
    from ..models.error import Error
    from .item.with_ticket_item_request_builder import WithTicketItemRequestBuilder
    from .tickets_get_response import TicketsGetResponse

class TicketsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tickets
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new TicketsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "", path_parameters)
    
    def by_ticket_id(self,ticket_id: str) -> WithTicketItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tickets.item collection
        param ticket_id: Ticket ID.
        Returns: WithTicketItemRequestBuilder
        """
        if ticket_id is None:
            raise TypeError("ticket_id cannot be null.")
        from .item.with_ticket_item_request_builder import WithTicketItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["ticketId"] = ticket_id
        return WithTicketItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[TicketsRequestBuilderGetQueryParameters]] = None) -> Optional[TicketsGetResponse]:
        """
        Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TicketsGetResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ..models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from .tickets_get_response import TicketsGetResponse

        return await self.request_adapter.send_async(request_info, TicketsGetResponse, error_mapping)
    
    async def post(self,body: CreateTicketRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[CreateTicketResponse]:
        """
        Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
        param body: Creates a self-filed support ticket owned by the API key owner.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[CreateTicketResponse]
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
            "409": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ..models.create_ticket_response import CreateTicketResponse

        return await self.request_adapter.send_async(request_info, CreateTicketResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[TicketsRequestBuilderGetQueryParameters]] = None) -> RequestInformation:
        """
        Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_post_request_information(self,body: CreateTicketRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
        param body: Creates a self-filed support ticket owned by the API key owner.
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
    
    def with_url(self,raw_url: str) -> TicketsRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: TicketsRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return TicketsRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class TicketsRequestBuilderGetQueryParameters():
        """
        Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
        """
        # Opaque continuation cursor from a prior page's nextCursor.
        cursor: Optional[str] = None

        # Page size (1-100). Defaults to 25.
        limit: Optional[str] = None

    
    @dataclass
    class TicketsRequestBuilderGetRequestConfiguration(RequestConfiguration[TicketsRequestBuilderGetQueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class TicketsRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

