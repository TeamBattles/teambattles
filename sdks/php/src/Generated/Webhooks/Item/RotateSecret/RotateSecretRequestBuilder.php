<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item\RotateSecret;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\WebhookSecret;

/**
 * Builds and executes requests for operations under /webhooks/{id}/rotate-secret
*/
class RotateSecretRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RotateSecretRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/webhooks/{id}/rotate-secret');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Rotates the endpoint's signing secret. The previous secret keeps signing for a 24h grace window so consumers can update without missing deliveries. Returns the new secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
     * @param RotateSecretRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WebhookSecret|null>
     * @throws Exception
    */
    public function post(?RotateSecretRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WebhookSecret::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Rotates the endpoint's signing secret. The previous secret keeps signing for a 24h grace window so consumers can update without missing deliveries. Returns the new secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
     * @param RotateSecretRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?RotateSecretRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RotateSecretRequestBuilder
    */
    public function withUrl(string $rawUrl): RotateSecretRequestBuilder {
        return new RotateSecretRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
