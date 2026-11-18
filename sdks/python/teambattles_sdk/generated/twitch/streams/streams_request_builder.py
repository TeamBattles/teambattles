from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .history.history_request_builder import HistoryRequestBuilder
    from .signals.signals_request_builder import SignalsRequestBuilder

class StreamsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /twitch/streams
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new StreamsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/twitch/streams", path_parameters)
    
    @property
    def history(self) -> HistoryRequestBuilder:
        """
        The history property
        """
        from .history.history_request_builder import HistoryRequestBuilder

        return HistoryRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def signals(self) -> SignalsRequestBuilder:
        """
        The signals property
        """
        from .signals.signals_request_builder import SignalsRequestBuilder

        return SignalsRequestBuilder(self.request_adapter, self.path_parameters)
    

