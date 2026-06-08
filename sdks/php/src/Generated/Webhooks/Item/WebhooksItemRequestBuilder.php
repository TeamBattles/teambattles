<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\UpdateWebhookBody;
use TeamBattles\Sdk\Generated\Models\WebhookEndpoint;
use TeamBattles\Sdk\Generated\Models\WebhookOk;
use TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries\DeliveriesRequestBuilder;
use TeamBattles\Sdk\Generated\Webhooks\Item\RotateSecret\RotateSecretRequestBuilder;
use TeamBattles\Sdk\Generated\Webhooks\Item\Test\TestRequestBuilder;

/**
 * Builds and executes requests for operations under /webhooks/{id}
*/
class WebhooksItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The deliveries property
    */
    public function deliveries(): DeliveriesRequestBuilder {
        return new DeliveriesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The rotateSecret property
    */
    public function rotateSecret(): RotateSecretRequestBuilder {
        return new RotateSecretRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The test property
    */
    public function test(): TestRequestBuilder {
        return new TestRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WebhooksItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/webhooks/{id}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @param WebhooksItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WebhookOk|null>
     * @throws Exception
    */
    public function delete(?WebhooksItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toDeleteRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WebhookOk::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @param WebhooksItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WebhookEndpoint|null>
     * @throws Exception
    */
    public function get(?WebhooksItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WebhookEndpoint::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param UpdateWebhookBody $body Partial update of a webhook endpoint.
     * @param WebhooksItemRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WebhookOk|null>
     * @throws Exception
    */
    public function patch(UpdateWebhookBody $body, ?WebhooksItemRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WebhookOk::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @param WebhooksItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toDeleteRequestInformation(?WebhooksItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::DELETE;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @param WebhooksItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WebhooksItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param UpdateWebhookBody $body Partial update of a webhook endpoint.
     * @param WebhooksItemRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(UpdateWebhookBody $body, ?WebhooksItemRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return WebhooksItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WebhooksItemRequestBuilder {
        return new WebhooksItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
