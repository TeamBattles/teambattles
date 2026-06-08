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
    from ..models.create_webhook_body import CreateWebhookBody
    from ..models.error import Error
    from ..models.webhook_list_response import WebhookListResponse
    from ..models.webhook_secret import WebhookSecret
    from .item.webhooks_item_request_builder import WebhooksItemRequestBuilder

class WebhooksRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /webhooks
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WebhooksRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/webhooks", path_parameters)
    
    def by_id(self,id: str) -> WebhooksItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.webhooks.item collection
        param id: Webhook endpoint id.
        Returns: WebhooksItemRequestBuilder
        """
        if id is None:
            raise TypeError("id cannot be null.")
        from .item.webhooks_item_request_builder import WebhooksItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["id"] = id
        return WebhooksItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WebhookListResponse]:
        """
        Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[WebhookListResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ..models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "429": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ..models.webhook_list_response import WebhookListResponse

        return await self.request_adapter.send_async(request_info, WebhookListResponse, error_mapping)
    
    async def post(self,body: CreateWebhookBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WebhookSecret]:
        """
        Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
        param body: Create a webhook endpoint in the caller's scope.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[WebhookSecret]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ..models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "409": Error,
            "429": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ..models.webhook_secret import WebhookSecret

        return await self.request_adapter.send_async(request_info, WebhookSecret, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_post_request_information(self,body: CreateWebhookBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
        param body: Create a webhook endpoint in the caller's scope.
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
    
    def with_url(self,raw_url: str) -> WebhooksRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WebhooksRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WebhooksRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class WebhooksRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class WebhooksRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

