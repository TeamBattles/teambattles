from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .approve.approve_request_builder import ApproveRequestBuilder
    from .deny.deny_request_builder import DenyRequestBuilder
    from .remove.remove_request_builder import RemoveRequestBuilder

class WithLeagueTeamItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithLeagueTeamItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}", path_parameters)
    
    @property
    def approve(self) -> ApproveRequestBuilder:
        """
        The approve property
        """
        from .approve.approve_request_builder import ApproveRequestBuilder

        return ApproveRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def deny(self) -> DenyRequestBuilder:
        """
        The deny property
        """
        from .deny.deny_request_builder import DenyRequestBuilder

        return DenyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def remove(self) -> RemoveRequestBuilder:
        """
        The remove property
        """
        from .remove.remove_request_builder import RemoveRequestBuilder

        return RemoveRequestBuilder(self.request_adapter, self.path_parameters)
    

