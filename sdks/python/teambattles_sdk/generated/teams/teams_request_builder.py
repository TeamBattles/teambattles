from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

class TeamsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /teams
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new TeamsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/teams", path_parameters)

    def by_identifier(self,identifier: str) -> WithIdentifierItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.teams.item collection
        param identifier: Team slug or Convex team ID.
        Returns: WithIdentifierItemRequestBuilder
        """
        if identifier is None:
            raise TypeError("identifier cannot be null.")
        from .item.with_identifier_item_request_builder import WithIdentifierItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["identifier"] = identifier
        return WithIdentifierItemRequestBuilder(self.request_adapter, url_tpl_params)


