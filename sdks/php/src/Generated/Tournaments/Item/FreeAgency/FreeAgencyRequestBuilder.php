<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Me\MeRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\OffersRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency
*/
class FreeAgencyRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The me property
    */
    public function me(): MeRequestBuilder {
        return new MeRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The offers property
    */
    public function offers(): OffersRequestBuilder {
        return new OffersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new FreeAgencyRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agency');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
