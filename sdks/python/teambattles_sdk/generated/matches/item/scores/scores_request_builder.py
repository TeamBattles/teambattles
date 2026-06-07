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
    from ....models.confirm_score_body import ConfirmScoreBody
    from ....models.error import Error
    from ....models.map_scores import MapScores
    from ....models.score_submission_result import ScoreSubmissionResult
    from ....models.submit_score_body import SubmitScoreBody

class ScoresRequestBuilder(BaseRequestBuilder):
    """
    Builds and executes requests for operations under /matches/{matchId}/scores
    """
    def __init__(self,request_adapter: RequestAdapter, path_parameters: Union[str, dict[str, Any]]) -> None:
        """
        Instantiates a new ScoresRequestBuilder and sets the default values.
        param path_parameters: The raw url or the url-template parameters for the request.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        super().__init__(request_adapter, "{+baseurl}/matches/{matchId}/scores", path_parameters)

    async def get(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[MapScores]:
        """
        Retrieve all map scores for a match, including a series score summary. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[MapScores]
        """
        request_info = self.to_get_request_information(
            request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null")
        from ....models.map_scores import MapScores

        return await self.request_adapter.send_async(request_info, MapScores, error_mapping)

    async def patch(self,body: ConfirmScoreBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[ScoreSubmissionResult]:
        """
        Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
        param body: Confirmation payload identifying the map score to confirm.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[ScoreSubmissionResult]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_patch_request_information(
            body, request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null")
        from ....models.score_submission_result import ScoreSubmissionResult

        return await self.request_adapter.send_async(request_info, ScoreSubmissionResult, error_mapping)

    async def post(self,body: SubmitScoreBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> Optional[ScoreSubmissionResult]:
        """
        Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
        param body: Map score submission payload for a single map.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: Optional[ScoreSubmissionResult]
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = self.to_post_request_information(
            body, request_configuration
        )
        from ....models.error import Error

        error_mapping: dict[str, type[ParsableFactory]] = {
            "400": Error,
            "401": Error,
            "403": Error,
            "404": Error,
        }
        if not self.request_adapter:
            raise Exception("Http core is null")
        from ....models.score_submission_result import ScoreSubmissionResult

        return await self.request_adapter.send_async(request_info, ScoreSubmissionResult, error_mapping)

    def to_get_request_information(self,request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Retrieve all map scores for a match, including a series score summary. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        request_info = RequestInformation(Method.GET, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        return request_info

    def to_patch_request_information(self,body: ConfirmScoreBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
        param body: Confirmation payload identifying the map score to confirm.
        param request_configuration: Configuration for the request such as headers, query parameters, and middleware options.
        Returns: RequestInformation
        """
        if body is None:
            raise TypeError("body cannot be null.")
        request_info = RequestInformation(Method.PATCH, self.url_template, self.path_parameters)
        request_info.configure(request_configuration)
        request_info.headers.try_add("Accept", "application/json")
        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
        return request_info

    def to_post_request_information(self,body: SubmitScoreBody, request_configuration: Optional[RequestConfiguration[QueryParameters]] = None) -> RequestInformation:
        """
        Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
        param body: Map score submission payload for a single map.
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

    def with_url(self,raw_url: str) -> ScoresRequestBuilder:
        """
        Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
        param raw_url: The raw URL to use for the request builder.
        Returns: ScoresRequestBuilder
        """
        if raw_url is None:
            raise TypeError("raw_url cannot be null.")
        return ScoresRequestBuilder(self.request_adapter, raw_url)

    @dataclass
    class ScoresRequestBuilderGetRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)

    @dataclass
    class ScoresRequestBuilderPatchRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)

    @dataclass
    class ScoresRequestBuilderPostRequestConfiguration(RequestConfiguration[QueryParameters]):
        """
        Configuration for the request such as headers, query parameters, and middleware options.
        """
        warn("This class is deprecated. Please use the generic RequestConfiguration class generated by the generator.", DeprecationWarning)


