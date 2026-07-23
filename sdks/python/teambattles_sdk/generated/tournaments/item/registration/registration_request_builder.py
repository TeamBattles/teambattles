from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .close.close_request_builder import CloseRequestBuilder
    from .open.open_request_builder import OpenRequestBuilder

class RegistrationRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/registration
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RegistrationRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/registration", path_parameters)
    
    @property
    def close(self) -> CloseRequestBuilder:
        """
        The close property
        """
        from .close.close_request_builder import CloseRequestBuilder

        return CloseRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def open(self) -> OpenRequestBuilder:
        """
        The open property
        """
        from .open.open_request_builder import OpenRequestBuilder

        return OpenRequestBuilder(self.request_adapter, self.path_parameters)
    

