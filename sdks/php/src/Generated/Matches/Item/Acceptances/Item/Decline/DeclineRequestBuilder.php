<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Acceptances\Item\Decline;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\DeclineAcceptanceRequestBody;
use TeamBattles\Sdk\Generated\Models\DeclineAcceptanceResponse;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /matches/{matchId}/acceptances/{acceptanceId}/decline
*/
class DeclineRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new DeclineRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}/decline');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Declines a pending match acceptance as the personal API key owner. The owner must captain the creator team, and the acceptance must still be pending. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param DeclineAcceptanceRequestBody $body Declines a pending match acceptance as the API key owner.
     * @param DeclineRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<DeclineAcceptanceResponse|null>
     * @throws Exception
    */
    public function post(DeclineAcceptanceRequestBody $body, ?DeclineRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [DeclineAcceptanceResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Declines a pending match acceptance as the personal API key owner. The owner must captain the creator team, and the acceptance must still be pending. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param DeclineAcceptanceRequestBody $body Declines a pending match acceptance as the API key owner.
     * @param DeclineRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(DeclineAcceptanceRequestBody $body, ?DeclineRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return DeclineRequestBuilder
    */
    public function withUrl(string $rawUrl): DeclineRequestBuilder {
        return new DeclineRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
