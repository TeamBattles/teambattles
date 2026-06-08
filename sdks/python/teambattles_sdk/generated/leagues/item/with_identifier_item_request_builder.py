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
    from ...models.error import Error
    from ...models.league_profile_response import LeagueProfileResponse
    from .activity_feed.activity_feed_request_builder import ActivityFeedRequestBuilder
    from .apply_eligibility.apply_eligibility_request_builder import ApplyEligibilityRequestBuilder
    from .bans.bans_request_builder import BansRequestBuilder
    from .branding.branding_request_builder import BrandingRequestBuilder
    from .cooldowns.cooldowns_request_builder import CooldownsRequestBuilder
    from .dashboard.dashboard_request_builder import DashboardRequestBuilder
    from .display_rules.display_rules_request_builder import DisplayRulesRequestBuilder
    from .games.games_request_builder import GamesRequestBuilder
    from .matches.matches_request_builder import MatchesRequestBuilder
    from .members.members_request_builder import MembersRequestBuilder
    from .ownership.ownership_request_builder import OwnershipRequestBuilder
    from .penalties.penalties_request_builder import PenaltiesRequestBuilder
    from .points.points_request_builder import PointsRequestBuilder
    from .rules.rules_request_builder import RulesRequestBuilder
    from .seasons.seasons_request_builder import SeasonsRequestBuilder
    from .season_options.season_options_request_builder import SeasonOptionsRequestBuilder
    from .settings.settings_request_builder import SettingsRequestBuilder
    from .shutdown.shutdown_request_builder import ShutdownRequestBuilder
    from .standings.standings_request_builder import StandingsRequestBuilder
    from .teams.teams_request_builder import TeamsRequestBuilder
    from .tickets.tickets_request_builder import TicketsRequestBuilder

class WithIdentifierItemRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /leagues/{identifier}
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/leagues/{identifier}", path_parameters)
    
    async def post(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[LeagueProfileResponse]:
        """
        Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[LeagueProfileResponse]
        """
        request_info = self.to_post_request_information(
            request_configuration
        )
        from ...models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null") 
        from ...models.league_profile_response import LeagueProfileResponse

        return await self.request_adapter.send_async(request_info, LeagueProfileResponse, error_mapping)
    
    def to_post_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.POST, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info
    
    def with_url(self,raw_url: str) -> WithIdentifierItemRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: WithIdentifierItemRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return WithIdentifierItemRequestBuilder(self.request_adapter, raw_url)
    
    @property
    def activity_feed(self) -> ActivityFeedRequestBuilder:
        """
        The activityFeed property
        """
        from .activity_feed.activity_feed_request_builder import ActivityFeedRequestBuilder

        return ActivityFeedRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def apply_eligibility(self) -> ApplyEligibilityRequestBuilder:
        """
        The applyEligibility property
        """
        from .apply_eligibility.apply_eligibility_request_builder import ApplyEligibilityRequestBuilder

        return ApplyEligibilityRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def bans(self) -> BansRequestBuilder:
        """
        The bans property
        """
        from .bans.bans_request_builder import BansRequestBuilder

        return BansRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def branding(self) -> BrandingRequestBuilder:
        """
        The branding property
        """
        from .branding.branding_request_builder import BrandingRequestBuilder

        return BrandingRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def cooldowns(self) -> CooldownsRequestBuilder:
        """
        The cooldowns property
        """
        from .cooldowns.cooldowns_request_builder import CooldownsRequestBuilder

        return CooldownsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def dashboard(self) -> DashboardRequestBuilder:
        """
        The dashboard property
        """
        from .dashboard.dashboard_request_builder import DashboardRequestBuilder

        return DashboardRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def display_rules(self) -> DisplayRulesRequestBuilder:
        """
        The displayRules property
        """
        from .display_rules.display_rules_request_builder import DisplayRulesRequestBuilder

        return DisplayRulesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def games(self) -> GamesRequestBuilder:
        """
        The games property
        """
        from .games.games_request_builder import GamesRequestBuilder

        return GamesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def matches(self) -> MatchesRequestBuilder:
        """
        The matches property
        """
        from .matches.matches_request_builder import MatchesRequestBuilder

        return MatchesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def members(self) -> MembersRequestBuilder:
        """
        The members property
        """
        from .members.members_request_builder import MembersRequestBuilder

        return MembersRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def ownership(self) -> OwnershipRequestBuilder:
        """
        The ownership property
        """
        from .ownership.ownership_request_builder import OwnershipRequestBuilder

        return OwnershipRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def penalties(self) -> PenaltiesRequestBuilder:
        """
        The penalties property
        """
        from .penalties.penalties_request_builder import PenaltiesRequestBuilder

        return PenaltiesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def points(self) -> PointsRequestBuilder:
        """
        The points property
        """
        from .points.points_request_builder import PointsRequestBuilder

        return PointsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def rules(self) -> RulesRequestBuilder:
        """
        The rules property
        """
        from .rules.rules_request_builder import RulesRequestBuilder

        return RulesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def season_options(self) -> SeasonOptionsRequestBuilder:
        """
        The seasonOptions property
        """
        from .season_options.season_options_request_builder import SeasonOptionsRequestBuilder

        return SeasonOptionsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def seasons(self) -> SeasonsRequestBuilder:
        """
        The seasons property
        """
        from .seasons.seasons_request_builder import SeasonsRequestBuilder

        return SeasonsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def settings(self) -> SettingsRequestBuilder:
        """
        The settings property
        """
        from .settings.settings_request_builder import SettingsRequestBuilder

        return SettingsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def shutdown(self) -> ShutdownRequestBuilder:
        """
        The shutdown property
        """
        from .shutdown.shutdown_request_builder import ShutdownRequestBuilder

        return ShutdownRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def standings(self) -> StandingsRequestBuilder:
        """
        The standings property
        """
        from .standings.standings_request_builder import StandingsRequestBuilder

        return StandingsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def teams(self) -> TeamsRequestBuilder:
        """
        The teams property
        """
        from .teams.teams_request_builder import TeamsRequestBuilder

        return TeamsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def tickets(self) -> TicketsRequestBuilder:
        """
        The tickets property
        """
        from .tickets.tickets_request_builder import TicketsRequestBuilder

        return TicketsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @dataclass
    class WithIdentifierItemRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)
    

