<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Members\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Members\Item\Remove\RemoveRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Members\Item\Role\RoleRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/members/{memberId}
*/
class WithMemberItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The remove property
    */
    public function remove(): RemoveRequestBuilder {
        return new RemoveRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The role property
    */
    public function role(): RoleRequestBuilder {
        return new RoleRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithMemberItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/members/{memberId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
