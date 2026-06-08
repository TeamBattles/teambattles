<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Dashboard;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Dashboard\Stats\StatsRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/dashboard
*/
class DashboardRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The stats property
    */
    public function stats(): StatsRequestBuilder {
        return new StatsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new DashboardRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/dashboard');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
