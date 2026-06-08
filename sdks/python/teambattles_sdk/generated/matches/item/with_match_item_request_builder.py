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
    from ...models.api_match_detail_response import ApiMatchDetailResponse
    from ...models.error import Error
    from .accept.accept_request_builder import AcceptRequestBuilder
    from .attendance.attendance_request_builder import AttendanceRequestBuilder
    from .cancel.cancel_request_builder import CancelRequestBuilder
    from .chat.chat_request_builder import ChatRequestBuilder
    from .forfeit.forfeit_request_builder import ForfeitRequestBuilder
    from .lobby_code.lobby_code_request_builder import LobbyCodeRequestBuilder
    from .players.players_request_builder import PlayersRequestBuilder
    from .ready.ready_request_builder import ReadyRequestBuilder
    from .scores.scores_request_builder import ScoresRequestBuilder

class WithMatchItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /matches/{matchId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithMatchItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/matches/{matchId}", path_parameters)
    
    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[ApiMatchDetailResponse]:
        """
        Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[ApiMatchDetailResponse]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
            "429": Error,
            "500": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ...models.api_match_detail_response import ApiMatchDetailResponse

        return await self.request_adapter.send_async(request_info, ApiMatchDetailResponse, error_mapping)
    
    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> WithMatchItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithMatchItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithMatchItemRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def accept(self) -> AcceptRequestBuilder:
        """
        The accept property
        """
        from .accept.accept_request_builder import AcceptRequestBuilder

        return AcceptRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def attendance(self) -> AttendanceRequestBuilder:
        """
        The attendance property
        """
        from .attendance.attendance_request_builder import AttendanceRequestBuilder

        return AttendanceRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def cancel(self) -> CancelRequestBuilder:
        """
        The cancel property
        """
        from .cancel.cancel_request_builder import CancelRequestBuilder

        return CancelRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def chat(self) -> ChatRequestBuilder:
        """
        The chat property
        """
        from .chat.chat_request_builder import ChatRequestBuilder

        return ChatRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def forfeit(self) -> ForfeitRequestBuilder:
        """
        The forfeit property
        """
        from .forfeit.forfeit_request_builder import ForfeitRequestBuilder

        return ForfeitRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def lobby_code(self) -> LobbyCodeRequestBuilder:
        """
        The lobbyCode property
        """
        from .lobby_code.lobby_code_request_builder import LobbyCodeRequestBuilder

        return LobbyCodeRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def players(self) -> PlayersRequestBuilder:
        """
        The players property
        """
        from .players.players_request_builder import PlayersRequestBuilder

        return PlayersRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def ready(self) -> ReadyRequestBuilder:
        """
        The ready property
        """
        from .ready.ready_request_builder import ReadyRequestBuilder

        return ReadyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def scores(self) -> ScoresRequestBuilder:
        """
        The scores property
        """
        from .scores.scores_request_builder import ScoresRequestBuilder

        return ScoresRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class WithMatchItemRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

