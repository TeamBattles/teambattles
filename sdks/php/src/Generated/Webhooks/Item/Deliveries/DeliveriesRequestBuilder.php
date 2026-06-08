<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries\Item\WithDeliveryItemRequestBuilder;

/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries
*/
class DeliveriesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.webhooks.item.deliveries.item collection
     * @param string $deliveryId Delivery-log row id to replay.
     * @return WithDeliveryItemRequestBuilder
    */
    public function byDeliveryId(string $deliveryId): WithDeliveryItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['deliveryId'] = $deliveryId;
        return new WithDeliveryItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new DeliveriesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/webhooks/{id}/deliveries{?cursor*,limit*}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
     * @param DeliveriesRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<DeliveriesGetResponse|null>
     * @throws Exception
    */
    public function get(?DeliveriesRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [DeliveriesGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
     * @param DeliveriesRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?DeliveriesRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            if ($requestConfiguration->queryParameters !== null) {
                $requestInfo->setQueryParameters($requestConfiguration->queryParameters);
            }
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return DeliveriesRequestBuilder
    */
    public function withUrl(string $rawUrl): DeliveriesRequestBuilder {
        return new DeliveriesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
