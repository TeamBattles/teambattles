<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Bans\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Bans\Item\Revoke\RevokeRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/bans/{banId}
*/
class WithBanItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The revoke property
    */
    public function revoke(): RevokeRequestBuilder {
        return new RevokeRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithBanItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/bans/{banId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
