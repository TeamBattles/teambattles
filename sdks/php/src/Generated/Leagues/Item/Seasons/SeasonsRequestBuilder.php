<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Seasons;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\Seasons\Create\CreateRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Seasons\Item\WithSeasonItemRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeagueSeasons;
use TeamBattles\Sdk\Generated\Models\SeasonsRequestBody;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/seasons
*/
class SeasonsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The create property
    */
    public function create(): CreateRequestBuilder {
        return new CreateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item.seasons.item collection
     * @param string $seasonId League season ID.
     * @return WithSeasonItemRequestBuilder
    */
    public function bySeasonId(string $seasonId): WithSeasonItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['seasonId'] = $seasonId;
        return new WithSeasonItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new SeasonsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/seasons');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param SeasonsRequestBody $body Game and status filters for league seasons.
     * @param SeasonsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeagueSeasons|null>
     * @throws Exception
    */
    public function post(SeasonsRequestBody $body, ?SeasonsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeagueSeasons::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param SeasonsRequestBody $body Game and status filters for league seasons.
     * @param SeasonsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(SeasonsRequestBody $body, ?SeasonsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return SeasonsRequestBuilder
    */
    public function withUrl(string $rawUrl): SeasonsRequestBuilder {
        return new SeasonsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
