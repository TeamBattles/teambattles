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
    from ...models.api_batch_stream_status_body import ApiBatchStreamStatusBody
    from ...models.api_batch_stream_status_envelope import ApiBatchStreamStatusEnvelope
    from ...models.error import Error

class LiveStatusRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /streams/live-status
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new LiveStatusRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/streams/live-status", path_parameters)
    
    async def post(self,body: ApiBatchStreamStatusBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[ApiBatchStreamStatusEnvelope]:
        """
        Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
        param body: Batch live-status request body.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[ApiBatchStreamStatusEnvelope]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ...models.api_batch_stream_status_envelope import ApiBatchStreamStatusEnvelope

        return await self.request_adapter.send_async(request_info, ApiBatchStreamStatusEnvelope, error_mapping)
    
    def to_post_request_information(self,body: ApiBatchStreamStatusBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
        param body: Batch live-status request body.
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
    
    def with_url(self,raw_url: str) -> LiveStatusRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: LiveStatusRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return LiveStatusRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class LiveStatusRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

