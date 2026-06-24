<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Acceptances\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Matches\Item\Acceptances\Item\Approve\ApproveRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Acceptances\Item\Decline\DeclineRequestBuilder;

/**
 * Builds and executes requests for operations under /matches/{matchId}/acceptances/{acceptanceId}
*/
class WithAcceptanceItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The approve property
    */
    public function approve(): ApproveRequestBuilder {
        return new ApproveRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The decline property
    */
    public function decline(): DeclineRequestBuilder {
        return new DeclineRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithAcceptanceItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
