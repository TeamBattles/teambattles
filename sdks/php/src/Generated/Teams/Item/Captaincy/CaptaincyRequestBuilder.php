<?php

namespace TeamBattles\Sdk\Generated\Teams\Item\Captaincy;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Teams\Item\Captaincy\Transfer\TransferRequestBuilder;

/**
 * Builds and executes requests for operations under /teams/{identifier}/captaincy
*/
class CaptaincyRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The transfer property
    */
    public function transfer(): TransferRequestBuilder {
        return new TransferRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new CaptaincyRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}/captaincy');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
