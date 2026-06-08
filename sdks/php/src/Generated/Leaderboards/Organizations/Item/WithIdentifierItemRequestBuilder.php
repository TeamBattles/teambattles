<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Organizations\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leaderboards\Organizations\Item\Rank\RankRequestBuilder;

/**
 * Builds and executes requests for operations under /leaderboards/organizations/{identifier}
*/
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The rank property
    */
    public function rank(): RankRequestBuilder {
        return new RankRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leaderboards/organizations/{identifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
