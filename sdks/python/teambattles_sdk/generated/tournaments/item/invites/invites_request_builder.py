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
    from ....models.tournament_invites_response import TournamentInvitesResponse
    from ....models.tournament_invite_team_body import TournamentInviteTeamBody
    from ....models.tournament_write_ack import TournamentWriteAck
    from .item.with_invite_item_request_builder import WithInviteItemRequestBuilder

class InvitesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/invites
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new InvitesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/invites", path_parameters)
    
    def by_invite_id(self,invite_id: str) -> WithInviteItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.invites.item collection
        param invite_id: Tournament invite ID, as returned by GET /tournaments/{identifier}/me for a team you lead.
        Returns: WithInviteItemRequestBuilder
        """
        if invite_id is None:
            raise TypeError("invite_id cannot be null.")
        from .item.with_invite_item_request_builder import WithInviteItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["inviteId"] = invite_id
        return WithInviteItemRequestBuilder(self.request_adapter, url_tpl_params)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentInvitesResponse]:
        """
        Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentInvitesResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ....models.tournament_invites_response import TournamentInvitesResponse

        return await self.request_adapter.send_async(request_info, TournamentInvitesResponse, error_mapping)
    
    async def post(self,body: TournamentInviteTeamBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
        param body: Tournament team invitation payload.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
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
        from ....models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_post_request_information(self,body: TournamentInviteTeamBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
        param body: Tournament team invitation payload.
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
    
    def with_url(self,raw_url: str) -> InvitesRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: InvitesRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return InvitesRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class InvitesRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class InvitesRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

