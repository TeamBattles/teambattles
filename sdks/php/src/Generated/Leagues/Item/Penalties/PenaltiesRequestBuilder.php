<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Penalties;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\Penalties\Create\CreateRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeaguePenalties;
use TeamBattles\Sdk\Generated\Models\PenaltiesRequestBody;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/penalties
*/
class PenaltiesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The create property
    */
    public function create(): CreateRequestBuilder {
        return new CreateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new PenaltiesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/penalties');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns penalties and/or member cooldowns for a league resolved by slug, with optional filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param PenaltiesRequestBody $body Type, team, game, and limit filters for league penalties and cooldowns.
     * @param PenaltiesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeaguePenalties|null>
     * @throws Exception
    */
    public function post(PenaltiesRequestBody $body, ?PenaltiesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeaguePenalties::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns penalties and/or member cooldowns for a league resolved by slug, with optional filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param PenaltiesRequestBody $body Type, team, game, and limit filters for league penalties and cooldowns.
     * @param PenaltiesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(PenaltiesRequestBody $body, ?PenaltiesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return PenaltiesRequestBuilder
    */
    public function withUrl(string $rawUrl): PenaltiesRequestBuilder {
        return new PenaltiesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
