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
    from ...models.error import Error
    from ...models.update_webhook_body import UpdateWebhookBody
    from ...models.webhook_endpoint import WebhookEndpoint
    from ...models.webhook_ok import WebhookOk
    from .deliveries.deliveries_request_builder import DeliveriesRequestBuilder
    from .rotate_secret.rotate_secret_request_builder import RotateSecretRequestBuilder
    from .test.test_request_builder import TestRequestBuilder

class WebhooksItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /webhooks/{id}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WebhooksItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/webhooks/{id}", path_parameters)

    async def delete(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WebhookOk]:
        """
        Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[WebhookOk]
        """
        request_info = self.to_delete_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null")
        from ...models.webhook_ok import WebhookOk

        return await self.request_adapter.send_async(request_info, WebhookOk, error_mapping)

    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WebhookEndpoint]:
        """
        Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[WebhookEndpoint]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null")
        from ...models.webhook_endpoint import WebhookEndpoint

        return await self.request_adapter.send_async(request_info, WebhookEndpoint, error_mapping)

    async def patch(self,body: UpdateWebhookBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[WebhookOk]:
        """
        Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
        param body: Partial update of a webhook endpoint.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[WebhookOk]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_patch_request_information(
            body, request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null")
        from ...models.webhook_ok import WebhookOk

        return await self.request_adapter.send_async(request_info, WebhookOk, error_mapping)

    def to_delete_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.DELETE, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info

    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info

    def to_patch_request_information(self,body: UpdateWebhookBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
        param body: Partial update of a webhook endpoint.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = RequestInformation(Method.PATCH, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
        return request_info

    def with_url(self,raw_url: str) -> WebhooksItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WebhooksItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WebhooksItemRequestBuilder(self.request_adapter, raw_url)

    @property
    def deliveries(self) -> DeliveriesRequestBuilder:
        """
        The deliveries property
        """
        from .deliveries.deliveries_request_builder import DeliveriesRequestBuilder

        return DeliveriesRequestBuilder(self.request_adapter, self.path_parameters)

    @property
    def rotate_secret(self) -> RotateSecretRequestBuilder:
        """
        The rotateSecret property
        """
        from .rotate_secret.rotate_secret_request_builder import RotateSecretRequestBuilder

        return RotateSecretRequestBuilder(self.request_adapter, self.path_parameters)

    @property
    def test(self) -> TestRequestBuilder:
        """
        The test property
        """
        from .test.test_request_builder import TestRequestBuilder

        return TestRequestBuilder(self.request_adapter, self.path_parameters)

    @dataclass
    class WebhooksItemRequestBuilderDeleteRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)

    @dataclass
    class WebhooksItemRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)

    @dataclass
    class WebhooksItemRequestBuilderPatchRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
