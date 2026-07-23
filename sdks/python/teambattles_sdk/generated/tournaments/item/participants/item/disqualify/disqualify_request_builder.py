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
    from ......models.error import Error
    from ......models.tournament_disqualify_participant_body import TournamentDisqualifyParticipantBody
    from ......models.tournament_write_ack import TournamentWriteAck

class DisqualifyRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/disqualify
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new DisqualifyRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/disqualify", path_parameters)
    
    async def post(self,body: TournamentDisqualifyParticipantBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
        param body: Participant disqualification payload.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ......models.error import Error

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
        from ......models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_post_request_information(self,body: TournamentDisqualifyParticipantBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
        param body: Participant disqualification payload.
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
    
    def with_url(self,raw_url: str) -> DisqualifyRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: DisqualifyRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return DisqualifyRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class DisqualifyRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

