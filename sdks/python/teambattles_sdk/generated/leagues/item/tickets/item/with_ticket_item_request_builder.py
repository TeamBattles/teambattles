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
    from .....models.error import Error
    from .....models.update_league_ticket_request_body import UpdateLeagueTicketRequestBody
    from .....models.update_league_ticket_response import UpdateLeagueTicketResponse
    from .escalate.escalate_request_builder import EscalateRequestBuilder
    from .reply.reply_request_builder import ReplyRequestBuilder

class WithTicketItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithTicketItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}", path_parameters)
    
    async def patch(self,body: UpdateLeagueTicketRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[UpdateLeagueTicketResponse]:
        """
        Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
        param body: Updates league ticket status, priority, or assignment.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[UpdateLeagueTicketResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_patch_request_information(
            body, request_configuration
        )
        from .....models.error import Error

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
        from .....models.update_league_ticket_response import UpdateLeagueTicketResponse

        return await self.request_adapter.send_async(request_info, UpdateLeagueTicketResponse, error_mapping)
    
    def to_patch_request_information(self,body: UpdateLeagueTicketRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
        param body: Updates league ticket status, priority, or assignment.
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
    
    def with_url(self,raw_url: str) -> WithTicketItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithTicketItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithTicketItemRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def escalate(self) -> EscalateRequestBuilder:
        """
        The escalate property
        """
        from .escalate.escalate_request_builder import EscalateRequestBuilder

        return EscalateRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def reply(self) -> ReplyRequestBuilder:
        """
        The reply property
        """
        from .reply.reply_request_builder import ReplyRequestBuilder

        return ReplyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class WithTicketItemRequestBuilderPatchRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

