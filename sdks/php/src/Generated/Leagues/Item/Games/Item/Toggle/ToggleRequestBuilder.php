<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Games\Item\Toggle;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\ToggleLeagueGameRequestBody;
use TeamBattles\Sdk\Generated\Models\ToggleLeagueGameResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/games/{leagueGameId}/toggle
*/
class ToggleRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ToggleRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/games/{leagueGameId}/toggle');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Activates or deactivates a league game. Deactivation cancels pending, accepted, and ready matches for that league game. Requires the league games capability.
     * @param ToggleLeagueGameRequestBody $body Toggles a league game.
     * @param ToggleRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ToggleLeagueGameResponse|null>
     * @throws Exception
    */
    public function post(ToggleLeagueGameRequestBody $body, ?ToggleRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ToggleLeagueGameResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Activates or deactivates a league game. Deactivation cancels pending, accepted, and ready matches for that league game. Requires the league games capability.
     * @param ToggleLeagueGameRequestBody $body Toggles a league game.
     * @param ToggleRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(ToggleLeagueGameRequestBody $body, ?ToggleRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ToggleRequestBuilder
    */
    public function withUrl(string $rawUrl): ToggleRequestBuilder {
        return new ToggleRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
