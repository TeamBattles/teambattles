from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_offer_item_request_builder import WithOfferItemRequestBuilder

class OffersRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new OffersRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers", path_parameters)
    
    def by_offer_id(self,offer_id: str) -> WithOfferItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.freeAgency.offers.item collection
        param offer_id: Free-agent pickup offer ID, as returned by GET /tournaments/{identifier}/me - inbound offers under `offers`.
        Returns: WithOfferItemRequestBuilder
        """
        if offer_id is None:
            raise TypeError("offer_id cannot be null.")
        from .item.with_offer_item_request_builder import WithOfferItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["offerId"] = offer_id
        return WithOfferItemRequestBuilder(self.request_adapter, url_tpl_params)
    

