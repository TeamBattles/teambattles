<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Players\Me\Rank;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeaderboardRankResponse;

/**
 * Builds and executes requests for operations under /leaderboards/players/me/rank
*/
class RankRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RankRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leaderboards/players/me/rank{?sortBy*}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the API key owner's own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
     * @param RankRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeaderboardRankResponse|null>
     * @throws Exception
    */
    public function get(?RankRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeaderboardRankResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the API key owner's own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
     * @param RankRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?RankRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            if ($requestConfiguration->queryParameters !== null) {
                $requestInfo->setQueryParameters($requestConfiguration->queryParameters);
            }
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return RankRequestBuilder
    */
    public function withUrl(string $rawUrl): RankRequestBuilder {
        return new RankRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
