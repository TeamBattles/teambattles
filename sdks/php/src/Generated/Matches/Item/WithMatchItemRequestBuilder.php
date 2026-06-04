<?php

namespace TeamBattles\Sdk\Generated\Matches\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Matches\Item\Scores\ScoresRequestBuilder;

/**
 * Builds and executes requests for operations under /matches/{matchId}
*/
class WithMatchItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The scores property
    */
    public function scores(): ScoresRequestBuilder {
        return new ScoresRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithMatchItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/{matchId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
