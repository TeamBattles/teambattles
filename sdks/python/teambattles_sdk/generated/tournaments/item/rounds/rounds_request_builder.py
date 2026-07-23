from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_round_item_request_builder import WithRoundItemRequestBuilder

class RoundsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/rounds
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RoundsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/rounds", path_parameters)
    
    def by_round_id(self,round_id: str) -> WithRoundItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.rounds.item collection
        param round_id: Tournament round id.
        Returns: WithRoundItemRequestBuilder
        """
        if round_id is None:
            raise TypeError("round_id cannot be null.")
        from .item.with_round_item_request_builder import WithRoundItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["roundId"] = round_id
        return WithRoundItemRequestBuilder(self.request_adapter, url_tpl_params)
    

