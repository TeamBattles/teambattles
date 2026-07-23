<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\Item\Offers\OffersRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\Item\Remove\RemoveRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}
*/
class WithFreeAgentItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The offers property
    */
    public function offers(): OffersRequestBuilder {
        return new OffersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The remove property
    */
    public function remove(): RemoveRequestBuilder {
        return new RemoveRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithFreeAgentItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
