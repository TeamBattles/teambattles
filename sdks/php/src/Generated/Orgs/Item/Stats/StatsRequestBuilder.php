<?php

namespace TeamBattles\Sdk\Generated\Orgs\Item\Stats;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /orgs/{identifier}/stats
*/
class StatsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new StatsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/orgs/{identifier}/stats');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns an organization's aggregate competitive stats by slug or organization ID. Stats are returned when the organization profile is limited or public, or when the API key owner is an active organization member (members can read stats for a private org too); a private organization viewed by a non-member returns 403, and an inactive or unknown organization returns 404. `teams` and `members` count only active, enabled teams and active members. `wins`, `losses`, and `matchesPlayed` are aggregated across the organization's active, enabled teams. `winRate` is wins divided by matchesPlayed and is 0 when no matches have been played. Requires orgs.profile:read.
     * @param StatsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<StatsGetResponse|null>
     * @throws Exception
    */
    public function get(?StatsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [StatsGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns an organization's aggregate competitive stats by slug or organization ID. Stats are returned when the organization profile is limited or public, or when the API key owner is an active organization member (members can read stats for a private org too); a private organization viewed by a non-member returns 403, and an inactive or unknown organization returns 404. `teams` and `members` count only active, enabled teams and active members. `wins`, `losses`, and `matchesPlayed` are aggregated across the organization's active, enabled teams. `winRate` is wins divided by matchesPlayed and is 0 when no matches have been played. Requires orgs.profile:read.
     * @param StatsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?StatsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return StatsRequestBuilder
    */
    public function withUrl(string $rawUrl): StatsRequestBuilder {
        return new StatsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
