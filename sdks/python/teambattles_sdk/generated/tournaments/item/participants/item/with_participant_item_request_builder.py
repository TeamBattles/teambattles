from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .check_in.check_in_request_builder import CheckInRequestBuilder
    from .disqualify.disqualify_request_builder import DisqualifyRequestBuilder
    from .remove.remove_request_builder import RemoveRequestBuilder
    from .roster.roster_request_builder import RosterRequestBuilder
    from .withdraw.withdraw_request_builder import WithdrawRequestBuilder

class WithParticipantItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithParticipantItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}", path_parameters)
    
    @property
    def check_in(self) -> CheckInRequestBuilder:
        """
        The checkIn property
        """
        from .check_in.check_in_request_builder import CheckInRequestBuilder

        return CheckInRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def disqualify(self) -> DisqualifyRequestBuilder:
        """
        The disqualify property
        """
        from .disqualify.disqualify_request_builder import DisqualifyRequestBuilder

        return DisqualifyRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def remove(self) -> RemoveRequestBuilder:
        """
        The remove property
        """
        from .remove.remove_request_builder import RemoveRequestBuilder

        return RemoveRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def roster(self) -> RosterRequestBuilder:
        """
        The roster property
        """
        from .roster.roster_request_builder import RosterRequestBuilder

        return RosterRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def withdraw(self) -> WithdrawRequestBuilder:
        """
        The withdraw property
        """
        from .withdraw.withdraw_request_builder import WithdrawRequestBuilder

        return WithdrawRequestBuilder(self.request_adapter, self.path_parameters)
    

