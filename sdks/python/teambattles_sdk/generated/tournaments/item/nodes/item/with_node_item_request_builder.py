from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .override_result.override_result_request_builder import OverrideResultRequestBuilder
    from .revert_result.revert_result_request_builder import RevertResultRequestBuilder

class WithNodeItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithNodeItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}", path_parameters)
    
    @property
    def override_result(self) -> OverrideResultRequestBuilder:
        """
        The overrideResult property
        """
        from .override_result.override_result_request_builder import OverrideResultRequestBuilder

        return OverrideResultRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def revert_result(self) -> RevertResultRequestBuilder:
        """
        The revertResult property
        """
        from .revert_result.revert_result_request_builder import RevertResultRequestBuilder

        return RevertResultRequestBuilder(self.request_adapter, self.path_parameters)
    

