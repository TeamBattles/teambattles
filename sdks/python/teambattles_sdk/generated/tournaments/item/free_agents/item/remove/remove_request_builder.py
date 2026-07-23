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
    from ......models.error import Error
    from ......models.tournament_write_ack import TournamentWriteAck

class RemoveRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}/remove
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RemoveRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove", path_parameters)
    
    async def post(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        request_info = self.to_post_request_information(
            request_configuration
        )
        from ......models.error import Error

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
        from ......models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_post_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> RemoveRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: RemoveRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return RemoveRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class RemoveRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

