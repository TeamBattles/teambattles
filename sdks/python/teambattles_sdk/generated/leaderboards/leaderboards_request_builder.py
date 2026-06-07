from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .organizations.organizations_request_builder import OrganizationsRequestBuilder
    from .players.players_request_builder import PlayersRequestBuilder
    from .teams.teams_request_builder import TeamsRequestBuilder

class LeaderboardsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leaderboards
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new LeaderboardsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leaderboards", path_parameters)

    @property
    def organizations(self) -> OrganizationsRequestBuilder:
        """
        The organizations property
        """
        from .organizations.organizations_request_builder import OrganizationsRequestBuilder

        return OrganizationsRequestBuilder(self.request_adapter, self.path_parameters)

    @property
    def players(self) -> PlayersRequestBuilder:
        """
        The players property
        """
        from .players.players_request_builder import PlayersRequestBuilder

        return PlayersRequestBuilder(self.request_adapter, self.path_parameters)

    @property
    def teams(self) -> TeamsRequestBuilder:
        """
        The teams property
        """
        from .teams.teams_request_builder import TeamsRequestBuilder

        return TeamsRequestBuilder(self.request_adapter, self.path_parameters)
