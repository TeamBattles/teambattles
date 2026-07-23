from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .apply.apply_request_builder import ApplyRequestBuilder
    from .enter.enter_request_builder import EnterRequestBuilder
    from .roster.roster_request_builder import RosterRequestBuilder

class WithTeamIdentifierItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithTeamIdentifierItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}", path_parameters)
    
    @property
    def apply(self) -> ApplyRequestBuilder:
        """
        The apply property
        """
        from .apply.apply_request_builder import ApplyRequestBuilder

        return ApplyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def enter(self) -> EnterRequestBuilder:
        """
        The enter property
        """
        from .enter.enter_request_builder import EnterRequestBuilder

        return EnterRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def roster(self) -> RosterRequestBuilder:
        """
        The roster property
        """
        from .roster.roster_request_builder import RosterRequestBuilder

        return RosterRequestBuilder(self.request_adapter, self.path_parameters)
    

