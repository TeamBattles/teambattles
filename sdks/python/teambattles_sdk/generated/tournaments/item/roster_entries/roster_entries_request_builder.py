from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .item.with_roster_entry_item_request_builder import WithRosterEntryItemRequestBuilder

class RosterEntriesRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/roster-entries
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new RosterEntriesRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/roster-entries", path_parameters)
    
    def by_roster_entry_id(self,roster_entry_id: str) -> WithRosterEntryItemRequestBuilder:
        """
        Gets an item from the teambattles_sdk.generated.tournaments.item.rosterEntries.item collection
        param roster_entry_id: Tournament roster entry ID.
        Returns: WithRosterEntryItemRequestBuilder
        """
        if roster_entry_id is None:
            raise TypeError("roster_entry_id cannot be null.")
        from .item.with_roster_entry_item_request_builder import WithRosterEntryItemRequestBuilder

        url_tpl_params = get_path_parameters(self.path_parameters)
        url_tpl_params["rosterEntryId"] = roster_entry_id
        return WithRosterEntryItemRequestBuilder(self.request_adapter, url_tpl_params)
    

