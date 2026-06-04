<?php

namespace TeamBattles\Sdk\Generated\Teams\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Teams\Item\Matches\MatchesRequestBuilder;

/**
 * Builds and executes requests for operations under /teams/{identifier}
*/
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The matches property
    */
    public function matches(): MatchesRequestBuilder {
        return new MatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
