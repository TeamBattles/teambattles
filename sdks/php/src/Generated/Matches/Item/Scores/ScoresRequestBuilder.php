<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Scores;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\ConfirmScoreBody;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\MapScores;
use TeamBattles\Sdk\Generated\Models\ScoreSubmissionResult;
use TeamBattles\Sdk\Generated\Models\SubmitScoreBody;

/**
 * Builds and executes requests for operations under /matches/{matchId}/scores
*/
class ScoresRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ScoresRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/{matchId}/scores');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Retrieve every map score for a match plus a series summary. Returns the full unpaginated list of map scores (no cursor or limit) and a seriesScore counting map wins per side, computed only from CONFIRMED maps and awarding a map to the side with the strictly higher score (equal scores count for neither). Each score's scoreStatus is CONFIRMED or PENDING; submittedBy, confirmedBy, and createdAt may be null. Screenshot URLs are suppressed (empty array) for any score whose API-uploaded image has not passed content moderation. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read. The caller must be an active member of one of the match's two teams; non-participants receive 403, unless they hold a TeamBattles staff role, which can read any match's scores.
     * @param ScoresRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<MapScores|null>
     * @throws Exception
    */
    public function get(?ScoresRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [MapScores::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
     * @param ConfirmScoreBody $body Confirmation payload identifying the map score to confirm.
     * @param ScoresRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ScoreSubmissionResult|null>
     * @throws Exception
    */
    public function patch(ConfirmScoreBody $body, ?ScoresRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ScoreSubmissionResult::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param SubmitScoreBody $body Map score submission payload for a single map.
     * @param ScoresRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ScoreSubmissionResult|null>
     * @throws Exception
    */
    public function post(SubmitScoreBody $body, ?ScoresRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ScoreSubmissionResult::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Retrieve every map score for a match plus a series summary. Returns the full unpaginated list of map scores (no cursor or limit) and a seriesScore counting map wins per side, computed only from CONFIRMED maps and awarding a map to the side with the strictly higher score (equal scores count for neither). Each score's scoreStatus is CONFIRMED or PENDING; submittedBy, confirmedBy, and createdAt may be null. Screenshot URLs are suppressed (empty array) for any score whose API-uploaded image has not passed content moderation. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read. The caller must be an active member of one of the match's two teams; non-participants receive 403, unless they hold a TeamBattles staff role, which can read any match's scores.
     * @param ScoresRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?ScoresRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
     * @param ConfirmScoreBody $body Confirmation payload identifying the map score to confirm.
     * @param ScoresRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(ConfirmScoreBody $body, ?ScoresRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::PATCH;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        $requestInfo->setContentFromParsable($this->requestAdapter, "application/json", $body);
        return $requestInfo;
    }

    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param SubmitScoreBody $body Map score submission payload for a single map.
     * @param ScoresRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(SubmitScoreBody $body, ?ScoresRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        $requestInfo->setContentFromParsable($this->requestAdapter, "application/json", $body);
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return ScoresRequestBuilder
    */
    public function withUrl(string $rawUrl): ScoresRequestBuilder {
        return new ScoresRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
