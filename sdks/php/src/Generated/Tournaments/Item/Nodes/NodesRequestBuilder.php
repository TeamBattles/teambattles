<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Nodes;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\Item\WithNodeItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes
*/
class NodesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.nodes.item collection
     * @param string $nodeId Bracket node ID.
     * @return WithNodeItemRequestBuilder
    */
    public function byNodeId(string $nodeId): WithNodeItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['nodeId'] = $nodeId;
        return new WithNodeItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new NodesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/nodes');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
