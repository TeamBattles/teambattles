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
    from .......models.error import Error
    from .......models.tournament_offer_respond_body import TournamentOfferRespondBody
    from .......models.tournament_offer_respond_response import TournamentOfferRespondResponse

class RespondRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers/{offerId}/respond
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RespondRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond", path_parameters)
    
    async def post(self,body: TournamentOfferRespondBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentOfferRespondResponse]:
        """
        Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
        param body: Free agent's response to a pickup offer.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentOfferRespondResponse]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from .......models.error import Error

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
        from .......models.tournament_offer_respond_response import TournamentOfferRespondResponse

        return await self.request_adapter.send_async(request_info, TournamentOfferRespondResponse, error_mapping)
    
    def to_post_request_information(self,body: TournamentOfferRespondBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
        param body: Free agent's response to a pickup offer.
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
    
    def with_url(self,raw_url: str) -> RespondRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: RespondRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return RespondRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class RespondRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

