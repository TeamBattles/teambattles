<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Teams\Item\Remove;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\RemoveLeagueTeamRequestBody;
use TeamBattles\Sdk\Generated\Models\RemoveLeagueTeamResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}/remove
*/
class RemoveRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RemoveRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/remove');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Removes an approved team from the league. Pending matches are cancelled and ready or accepted matches are forfeited by the removed team. Requires a league-operator key bound to the league and the league teams capability.
     * @param RemoveLeagueTeamRequestBody $body Removes an approved team from a league.
     * @param RemoveRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<RemoveLeagueTeamResponse|null>
     * @throws Exception
    */
    public function post(RemoveLeagueTeamRequestBody $body, ?RemoveRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [RemoveLeagueTeamResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Removes an approved team from the league. Pending matches are cancelled and ready or accepted matches are forfeited by the removed team. Requires a league-operator key bound to the league and the league teams capability.
     * @param RemoveLeagueTeamRequestBody $body Removes an approved team from a league.
     * @param RemoveRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(RemoveLeagueTeamRequestBody $body, ?RemoveRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RemoveRequestBuilder
    */
    public function withUrl(string $rawUrl): RemoveRequestBuilder {
        return new RemoveRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
