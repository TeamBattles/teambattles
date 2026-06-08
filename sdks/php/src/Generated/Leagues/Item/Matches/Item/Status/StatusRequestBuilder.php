<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Matches\Item\Status;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameStatusUpdateResponse;
use TeamBattles\Sdk\Generated\Models\LeagueStatusUpdateBody;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}/status
*/
class StatusRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new StatusRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/matches/{matchId}/status');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Transitions a league match between lifecycle states using a league-operator key bound to the league. Requires the league scores capability.
     * @param LeagueStatusUpdateBody $body Request body for updating a league match's lifecycle status.
     * @param StatusRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameStatusUpdateResponse|null>
     * @throws Exception
    */
    public function patch(LeagueStatusUpdateBody $body, ?StatusRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameStatusUpdateResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Transitions a league match between lifecycle states using a league-operator key bound to the league. Requires the league scores capability.
     * @param LeagueStatusUpdateBody $body Request body for updating a league match's lifecycle status.
     * @param StatusRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(LeagueStatusUpdateBody $body, ?StatusRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return StatusRequestBuilder
    */
    public function withUrl(string $rawUrl): StatusRequestBuilder {
        return new StatusRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
