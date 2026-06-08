<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries\Item\Replay;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\WebhookReplayResult;

/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries/{deliveryId}/replay
*/
class ReplayRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ReplayRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/webhooks/{id}/deliveries/{deliveryId}/replay');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Re-queues a dead-lettered delivery for a fresh attempt. Delivered, in-flight, or still-retrying (failed) deliveries cannot be replayed (409). Requires the webhooks.manage permission and the webhooks feature.
     * @param ReplayRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WebhookReplayResult|null>
     * @throws Exception
    */
    public function post(?ReplayRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WebhookReplayResult::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Re-queues a dead-lettered delivery for a fresh attempt. Delivered, in-flight, or still-retrying (failed) deliveries cannot be replayed (409). Requires the webhooks.manage permission and the webhooks feature.
     * @param ReplayRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?ReplayRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
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
     * @return ReplayRequestBuilder
    */
    public function withUrl(string $rawUrl): ReplayRequestBuilder {
        return new ReplayRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
