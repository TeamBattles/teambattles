from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from kiota_abstractions.default_query_parameters import QueryParameters
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.method import Method
from kiota_abstractions.request_adapter import RequestAdapter
from kiota_abstractions.request_information import RequestInformation
from kiota_abstractions.request_option import RequestOption
from kiota_abstractions.serialization import Parsable, ParsableFactory
from typing import Any, Optional, TYPE_CHECKING, Union
from warnings import warn

if TYPE_CHECKING:
    from ....models.error import Error
    from ....models.league_display_rules import LeagueDisplayRules
    from ....models.league_display_rules_request_body import LeagueDisplayRulesRequestBody
    from .item.with_display_rule_item_request_builder import WithDisplayRuleItemRequestBuilder
    from .reorder.reorder_request_builder import ReorderRequestBuilder
    from .upsert.upsert_request_builder import UpsertRequestBuilder

class DisplayRulesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/display-rules
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new DisplayRulesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/display-rules", path_parameters)
    
    def by_display_rule_id(self,display_rule_id: str) -> WithDisplayRuleItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leagues.item.displayRules.item collection
        param display_rule_id: Display rule ID.
        Returns: WithDisplayRuleItemRequestBuilder
        """
        if display_rule_id is None:
            raise TypeError("display_rule_id cannot be null.")
        from .item.with_display_rule_item_request_builder import WithDisplayRuleItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["displayRuleId"] = display_rule_id
        return WithDisplayRuleItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def post(self,body: LeagueDisplayRulesRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[LeagueDisplayRules]:
        """
        Returns display rules configured for a league game. Requires leagues.league_public:read.
        param body: Display rule selector.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[LeagueDisplayRules]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ....models.league_display_rules import LeagueDisplayRules

        return await self.request_adapter.send_async(request_info, LeagueDisplayRules, error_mapping)
    
    def to_post_request_information(self,body: LeagueDisplayRulesRequestBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns display rules configured for a league game. Requires leagues.league_public:read.
        param body: Display rule selector.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
        return request_info
    
    def with_url(self,raw_url: str) -> DisplayRulesRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: DisplayRulesRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return DisplayRulesRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def reorder(self) -> ReorderRequestBuilder:
        """
        The reorder property
        """
        from .reorder.reorder_request_builder import ReorderRequestBuilder

        return ReorderRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def upsert(self) -> UpsertRequestBuilder:
        """
        The upsert property
        """
        from .upsert.upsert_request_builder import UpsertRequestBuilder

        return UpsertRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class DisplayRulesRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

