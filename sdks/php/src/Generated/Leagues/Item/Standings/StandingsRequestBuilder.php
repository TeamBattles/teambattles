<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Standings;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeagueStandings;
use TeamBattles\Sdk\Generated\Models\StandingsRequestBody;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/standings
*/
class StandingsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new StandingsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/standings');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns approved teams with their season stats, ranked by standings position, for a league resolved by slug. Requires the leagues.league_public:read permission.
     * @param StandingsRequestBody $body Season and game filters for league standings.
     * @param StandingsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeagueStandings|null>
     * @throws Exception
    */
    public function post(StandingsRequestBody $body, ?StandingsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeagueStandings::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns approved teams with their season stats, ranked by standings position, for a league resolved by slug. Requires the leagues.league_public:read permission.
     * @param StandingsRequestBody $body Season and game filters for league standings.
     * @param StandingsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(StandingsRequestBody $body, ?StandingsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return StandingsRequestBuilder
    */
    public function withUrl(string $rawUrl): StandingsRequestBuilder {
        return new StandingsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
