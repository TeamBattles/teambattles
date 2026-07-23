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
    from ....models.my_tournament_entry_response import MyTournamentEntryResponse

class MeRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/me
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new MeRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/me", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[MyTournamentEntryResponse]:
        """
        Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[MyTournamentEntryResponse]
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
        from ....models.my_tournament_entry_response import MyTournamentEntryResponse

        return await self.request_adapter.send_async(request_info, MyTournamentEntryResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
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
    class MeRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

