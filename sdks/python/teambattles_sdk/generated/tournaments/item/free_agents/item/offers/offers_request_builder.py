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
    from ......models.tournament_send_offer_body import TournamentSendOfferBody
    from ......models.tournament_write_ack import TournamentWriteAck

class OffersRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}/offers
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new OffersRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers", path_parameters)
    
    async def post(self,body: TournamentSendOfferBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
        param body: Free-agent pickup offer payload.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ......models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "409": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ......models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_post_request_information(self,body: TournamentSendOfferBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
        param body: Free-agent pickup offer payload.
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
    
    def with_url(self,raw_url: str) -> OffersRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: OffersRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return OffersRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class OffersRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

