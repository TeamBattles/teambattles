from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_team_identifier_item_request_builder import WithTeamIdentifierItemRequestBuilder

class TeamsRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/teams
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new TeamsRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/teams", path_parameters)
    
    def by_team_identifier(self,team_identifier: str) -> WithTeamIdentifierItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.teams.item collection
        param team_identifier: Slug of the team to act as. You must be its captain, co-captain, or the owner of the organization that owns it. A team you do not lead and a slug that does not resolve BOTH answer 403 error_not_team_leader, so that this path is not a team-slug enumeration oracle.
        Returns: WithTeamIdentifierItemRequestBuilder
        """
        if team_identifier is None:
            raise TypeError("team_identifier cannot be null.")
        from .item.with_team_identifier_item_request_builder import WithTeamIdentifierItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["teamIdentifier"] = team_identifier
        return WithTeamIdentifierItemRequestBuilder(self.request_adapter, url_tpl_params)
    

