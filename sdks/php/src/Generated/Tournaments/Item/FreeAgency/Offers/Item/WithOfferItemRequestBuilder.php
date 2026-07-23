<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\Item\Respond\RespondRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\Item\Revoke\RevokeRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers/{offerId}
*/
class WithOfferItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The respond property
    */
    public function respond(): RespondRequestBuilder {
        return new RespondRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The revoke property
    */
    public function revoke(): RevokeRequestBuilder {
        return new RevokeRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithOfferItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
