<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\Item\OverrideResult\OverrideResultRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\Item\RevertResult\RevertResultRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}
*/
class WithNodeItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The overrideResult property
    */
    public function overrideResult(): OverrideResultRequestBuilder {
        return new OverrideResultRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The revertResult property
    */
    public function revertResult(): RevertResultRequestBuilder {
        return new RevertResultRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithNodeItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/nodes/{nodeId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
