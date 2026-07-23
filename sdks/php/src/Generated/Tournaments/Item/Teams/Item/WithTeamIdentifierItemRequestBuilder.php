<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\Apply\ApplyRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\Enter\EnterRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\Roster\RosterRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}
*/
class WithTeamIdentifierItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The apply property
    */
    public function apply(): ApplyRequestBuilder {
        return new ApplyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The enter property
    */
    public function enter(): EnterRequestBuilder {
        return new EnterRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The roster property
    */
    public function roster(): RosterRequestBuilder {
        return new RosterRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithTeamIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
