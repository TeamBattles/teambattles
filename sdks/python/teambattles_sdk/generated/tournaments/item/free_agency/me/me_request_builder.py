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
    from .....models.error import Error
    from .....models.tournament_free_agency_join_body import TournamentFreeAgencyJoinBody
    from .....models.tournament_write_ack import TournamentWriteAck

class MeRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/free-agency/me
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MeRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/me", path_parameters)
    
    async def delete(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        request_info = self.to_delete_request_information(
            request_configuration
        )
        from .....models.error import Error

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
        from .....models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    async def post(self,body: TournamentFreeAgencyJoinBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
        param body: Free-agent pool listing payload for the API key owner.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from .....models.error import Error

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
        from .....models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_delete_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.DELETE, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def to_post_request_information(self,body: TournamentFreeAgencyJoinBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
        param body: Free-agent pool listing payload for the API key owner.
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
    
    def with_url(self,raw_url: str) -> MeRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: MeRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return MeRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class MeRequestBuilderDeleteRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    
    @dataclass
    class MeRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

