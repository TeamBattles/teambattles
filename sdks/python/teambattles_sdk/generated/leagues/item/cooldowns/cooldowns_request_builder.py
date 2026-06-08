from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .config.config_request_builder import ConfigRequestBuilder
    from .issue.issue_request_builder import IssueRequestBuilder
    from .item.with_cooldown_item_request_builder import WithCooldownItemRequestBuilder

class CooldownsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/cooldowns
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new CooldownsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/cooldowns", path_parameters)
    
    def by_cooldown_id(self,cooldown_id: str) -> WithCooldownItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leagues.item.cooldowns.item collection
        param cooldown_id: League member cooldown ID.
        Returns: WithCooldownItemRequestBuilder
        """
        if cooldown_id is None:
            raise TypeError("cooldown_id cannot be null.")
        from .item.with_cooldown_item_request_builder import WithCooldownItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["cooldownId"] = cooldown_id
        return WithCooldownItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    @property
    def config(self) -> ConfigRequestBuilder:
        """
        The config property
        """
        from .config.config_request_builder import ConfigRequestBuilder

        return ConfigRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def issue(self) -> IssueRequestBuilder:
        """
        The issue property
        """
        from .issue.issue_request_builder import IssueRequestBuilder

        return IssueRequestBuilder(self.request_adapter, self.path_parameters)
    

