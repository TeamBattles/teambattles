<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries\Item\Replay\ReplayRequestBuilder;

/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries/{deliveryId}
*/
class WithDeliveryItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The replay property
    */
    public function replay(): ReplayRequestBuilder {
        return new ReplayRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithDeliveryItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/webhooks/{id}/deliveries/{deliveryId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
