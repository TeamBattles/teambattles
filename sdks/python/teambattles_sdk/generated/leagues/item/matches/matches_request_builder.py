from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .batch_scores.batch_scores_request_builder import BatchScoresRequestBuilder
    from .item.with_match_item_request_builder import WithMatchItemRequestBuilder

class MatchesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/matches
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MatchesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/matches", path_parameters)
    
    def by_match_id(self,match_id: str) -> WithMatchItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leagues.item.matches.item collection
        param match_id: Match ID.
        Returns: WithMatchItemRequestBuilder
        """
        if match_id is None:
            raise TypeError("match_id cannot be null.")
        from .item.with_match_item_request_builder import WithMatchItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["matchId"] = match_id
        return WithMatchItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    @property
    def batch_scores(self) -> BatchScoresRequestBuilder:
        """
        The batchScores property
        """
        from .batch_scores.batch_scores_request_builder import BatchScoresRequestBuilder

        return BatchScoresRequestBuilder(self.request_adapter, self.path_parameters)
    

