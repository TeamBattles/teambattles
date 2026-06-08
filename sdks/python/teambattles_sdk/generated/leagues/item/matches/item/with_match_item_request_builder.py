from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .player_stats.player_stats_request_builder import PlayerStatsRequestBuilder
    from .scores.scores_request_builder import ScoresRequestBuilder
    from .status.status_request_builder import StatusRequestBuilder

class WithMatchItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithMatchItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}", path_parameters)
    
    @property
    def player_stats(self) -> PlayerStatsRequestBuilder:
        """
        The playerStats property
        """
        from .player_stats.player_stats_request_builder import PlayerStatsRequestBuilder

        return PlayerStatsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def scores(self) -> ScoresRequestBuilder:
        """
        The scores property
        """
        from .scores.scores_request_builder import ScoresRequestBuilder

        return ScoresRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def status(self) -> StatusRequestBuilder:
        """
        The status property
        """
        from .status.status_request_builder import StatusRequestBuilder

        return StatusRequestBuilder(self.request_adapter, self.path_parameters)
    

