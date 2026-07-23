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
    from ....models.tournament_activity_feed_response import TournamentActivityFeedResponse

class ActivityFeedRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/activity-feed
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new ActivityFeedRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/activity-feed{?limit*}", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[ActivityFeedRequestBuilderGetQueryParameters]] = None) -> Optional[TournamentActivityFeedResponse]:
        """
        Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentActivityFeedResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
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
        from ....models.tournament_activity_feed_response import TournamentActivityFeedResponse

        return await self.request_adapter.send_async(request_info, TournamentActivityFeedResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[ActivityFeedRequestBuilderGetQueryParameters]] = None) -> RequestInformation:
        """
        Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> ActivityFeedRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: ActivityFeedRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return ActivityFeedRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class ActivityFeedRequestBuilderGetQueryParameters():
        """
        Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
        """
        # Maximum entries to return, 1-100. Defaults to 50.
        limit: Optional[int] = None

    
    @dataclass
    class ActivityFeedRequestBuilderGetRequestConfiguration(RequestConfiguration[ActivityFeedRequestBuilderGetQueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

