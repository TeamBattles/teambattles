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
    from .......models.error import Error
    from .......models.tournament_write_ack import TournamentWriteAck

class WithRosterEntryItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/roster/{rosterEntryId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithRosterEntryItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster/{rosterEntryId}", path_parameters)
    
    async def delete(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[TournamentWriteAck]:
        """
        Removes a roster entry from a team you lead. The entry must belong to BOTH the tournament and the team in the path; an entry from another tournament or another team answers 404 error_tournament_not_found, identically to one that does not exist, so this endpoint is not a cross-team existence oracle. Roster entry IDs come from GET /tournaments/{identifier}/me for your own entry, or from the participants endpoint for the rest of your team. Removing an entry sourced from the free-agent pool releases that player back to the pool as AVAILABLE - the step that must precede removing a picked-up agent from the pool. Requires the tournaments actor roster capability.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[TournamentWriteAck]
        """
        request_info = self.to_delete_request_information(
            request_configuration
        )
        from .......models.error import Error

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
        from .......models.tournament_write_ack import TournamentWriteAck

        return await self.request_adapter.send_async(request_info, TournamentWriteAck, error_mapping)
    
    def to_delete_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Removes a roster entry from a team you lead. The entry must belong to BOTH the tournament and the team in the path; an entry from another tournament or another team answers 404 error_tournament_not_found, identically to one that does not exist, so this endpoint is not a cross-team existence oracle. Roster entry IDs come from GET /tournaments/{identifier}/me for your own entry, or from the participants endpoint for the rest of your team. Removing an entry sourced from the free-agent pool releases that player back to the pool as AVAILABLE - the step that must precede removing a picked-up agent from the pool. Requires the tournaments actor roster capability.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.DELETE, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> WithRosterEntryItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithRosterEntryItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithRosterEntryItemRequestBuilder(self.request_adapter, raw_url)
    
    @dataclass
    class WithRosterEntryItemRequestBuilderDeleteRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

