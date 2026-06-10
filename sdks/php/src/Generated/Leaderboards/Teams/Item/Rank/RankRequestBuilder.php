<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Teams\Item\Rank;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeaderboardRankResponse;

/**
 * Builds and executes requests for operations under /leaderboards/teams/{identifier}/rank
*/
class RankRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RankRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leaderboards/teams/{identifier}/rank{?gameSlug*,sortBy*}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Resolves a single team by slug or ID and returns its 1-indexed rank on the public team leaderboard. `sortBy` selects the ranking field: wins (default), winRate, or experience. Pass `gameSlug` to rank within one game's leaderboard; omit it for the global (all-games) board. An unknown `gameSlug` returns 404. `rank` is null when the team is excluded from the leaderboard (private or disabled) and also when the team ranks beyond the internal scan window, since the rank is a bounded best-effort computation rather than a full-table sort. A missing or inactive team returns 404; an active but excluded team returns 200 with rank null. Requires teams.profile:read.
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
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeaderboardRankResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Resolves a single team by slug or ID and returns its 1-indexed rank on the public team leaderboard. `sortBy` selects the ranking field: wins (default), winRate, or experience. Pass `gameSlug` to rank within one game's leaderboard; omit it for the global (all-games) board. An unknown `gameSlug` returns 404. `rank` is null when the team is excluded from the leaderboard (private or disabled) and also when the team ranks beyond the internal scan window, since the rank is a bounded best-effort computation rather than a full-table sort. A missing or inactive team returns 404; an active but excluded team returns 200 with rank null. Requires teams.profile:read.
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
