from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_league_team_item_request_builder import WithLeagueTeamItemRequestBuilder

class TeamsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}/teams
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new TeamsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}/teams", path_parameters)
    
    def by_league_team_id(self,league_team_id: str) -> WithLeagueTeamItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.leagues.item.teams.item collection
        param league_team_id: League team application ID.
        Returns: WithLeagueTeamItemRequestBuilder
        """
        if league_team_id is None:
            raise TypeError("league_team_id cannot be null.")
        from .item.with_league_team_item_request_builder import WithLeagueTeamItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["leagueTeamId"] = league_team_id
        return WithLeagueTeamItemRequestBuilder(self.request_adapter, url_tpl_params)
    

