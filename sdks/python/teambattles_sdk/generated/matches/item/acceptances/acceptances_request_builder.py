from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_acceptance_item_request_builder import WithAcceptanceItemRequestBuilder

class AcceptancesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /matches/{matchId}/acceptances
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new AcceptancesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/matches/{matchId}/acceptances", path_parameters)
    
    def by_acceptance_id(self,acceptance_id: str) -> WithAcceptanceItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.matches.item.acceptances.item collection
        param acceptance_id: Match acceptance ID.
        Returns: WithAcceptanceItemRequestBuilder
        """
        if acceptance_id is None:
            raise TypeError("acceptance_id cannot be null.")
        from .item.with_acceptance_item_request_builder import WithAcceptanceItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["acceptanceId"] = acceptance_id
        return WithAcceptanceItemRequestBuilder(self.request_adapter, url_tpl_params)
    

