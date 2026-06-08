<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Teams\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Teams\Item\Approve\ApproveRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Teams\Item\Deny\DenyRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Teams\Item\Remove\RemoveRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}
*/
class WithLeagueTeamItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The approve property
    */
    public function approve(): ApproveRequestBuilder {
        return new ApproveRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The deny property
    */
    public function deny(): DenyRequestBuilder {
        return new DenyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The remove property
    */
    public function remove(): RemoveRequestBuilder {
        return new RemoveRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithLeagueTeamItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
