from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .matches.matches_request_builder import MatchesRequestBuilder

class UserRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /user
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new UserRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/user", path_parameters)
    
    @property
    def matches(self) -> MatchesRequestBuilder:
        """
        The matches property
        """
        from .matches.matches_request_builder import MatchesRequestBuilder

        return MatchesRequestBuilder(self.request_adapter, self.path_parameters)
    

