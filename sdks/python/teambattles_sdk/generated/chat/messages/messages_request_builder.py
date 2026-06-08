from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_message_item_request_builder import WithMessageItemRequestBuilder

class MessagesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /chat/messages
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MessagesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/chat/messages", path_parameters)
    
    def by_message_id(self,message_id: str) -> WithMessageItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.chat.messages.item collection
        param message_id: ID of the chat message to report.
        Returns: WithMessageItemRequestBuilder
        """
        if message_id is None:
            raise TypeError("message_id cannot be null.")
        from .item.with_message_item_request_builder import WithMessageItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["messageId"] = message_id
        return WithMessageItemRequestBuilder(self.request_adapter, url_tpl_params)
    

