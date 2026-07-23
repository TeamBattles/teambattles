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
    from ......models.tournament_invite_respond_body import TournamentInviteRespondBody
    from ......models.tournament_invite_respond_response import TournamentInviteRespondResponse

class RespondRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/invites/{inviteId}/respond
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RespondRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond", path_parameters)
    
    async def post(self,body: TournamentInviteRespondBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentInviteRespondResponse]:
        """
        Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
        param body: Captain response to a tournament invite.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentInviteRespondResponse]
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
            "409": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ......models.tournament_invite_respond_response import TournamentInviteRespondResponse

        return await self.request_adapter.send_async(request_info, TournamentInviteRespondResponse, error_mapping)
    
    def to_post_request_information(self,body: TournamentInviteRespondBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
        param body: Captain response to a tournament invite.
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
    
    def with_url(self,raw_url: str) -> RespondRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: RespondRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return RespondRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class RespondRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

