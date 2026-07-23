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
    from ....models.tournament_submit_for_approval_response import TournamentSubmitForApprovalResponse

class SubmitForApprovalRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/submit-for-approval
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new SubmitForApprovalRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/submit-for-approval", path_parameters)
    
    async def post(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentSubmitForApprovalResponse]:
        """
        Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentSubmitForApprovalResponse]
        """
        request_info = self.to_post_request_information(
            request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
            "409": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ....models.tournament_submit_for_approval_response import TournamentSubmitForApprovalResponse

        return await self.request_adapter.send_async(request_info, TournamentSubmitForApprovalResponse, error_mapping)
    
    def to_post_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> SubmitForApprovalRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: SubmitForApprovalRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return SubmitForApprovalRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class SubmitForApprovalRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

