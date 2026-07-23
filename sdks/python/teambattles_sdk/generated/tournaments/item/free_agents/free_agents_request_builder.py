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
    from ....models.tournament_free_agents_response import TournamentFreeAgentsResponse
    from .item.with_free_agent_item_request_builder import WithFreeAgentItemRequestBuilder

class FreeAgentsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/free-agents
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new FreeAgentsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents{?viewerParticipantId*}", path_parameters)
    
    def by_free_agent_id(self,free_agent_id: str) -> WithFreeAgentItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.freeAgents.item collection
        param free_agent_id: Free-agent pool entry ID, as returned by GET /tournaments/{identifier}/free-agents.
        Returns: WithFreeAgentItemRequestBuilder
        """
        if free_agent_id is None:
            raise TypeError("free_agent_id cannot be null.")
        from .item.with_free_agent_item_request_builder import WithFreeAgentItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["freeAgentId"] = free_agent_id
        return WithFreeAgentItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[FreeAgentsRequestBuilderGetQueryParameters]] = None) -> Optional[TournamentFreeAgentsResponse]:
        """
        Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentFreeAgentsResponse]
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
        from ....models.tournament_free_agents_response import TournamentFreeAgentsResponse

        return await self.request_adapter.send_async(request_info, TournamentFreeAgentsResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[FreeAgentsRequestBuilderGetQueryParameters]] = None) -> RequestInformation:
        """
        Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> FreeAgentsRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: FreeAgentsRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return FreeAgentsRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class FreeAgentsRequestBuilderGetQueryParameters():
        """
        Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
        """
        def get_query_parameter(self,original_name: str) -> str:
            """
            Maps the query parameters names to their encoded names for the URI template parsing.
            param original_name: The original query parameter name in the class.
            Returns: str
            """
            if original_name is None:
                raise TypeError("original_name cannot be null.")
            if original_name == "viewer_participant_id":
                return "viewerParticipantId"
            return original_name
        
        # Participant ID whose open offers should be reflected in `viewerOfferStatus`. The caller must lead that participant's team and the participant must belong to this tournament, otherwise the field is null for every agent.
        viewer_participant_id: Optional[str] = None

    
    @dataclass
    class FreeAgentsRequestBuilderGetRequestConfiguration(RequestConfiguration[FreeAgentsRequestBuilderGetQueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

