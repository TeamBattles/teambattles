<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Matches\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Matches\Item\PlayerStats\PlayerStatsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Matches\Item\Scores\ScoresRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Matches\Item\Status\StatusRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}
*/
class WithMatchItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The playerStats property
    */
    public function playerStats(): PlayerStatsRequestBuilder {
        return new PlayerStatsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The scores property
    */
    public function scores(): ScoresRequestBuilder {
        return new ScoresRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The status property
    */
    public function status(): StatusRequestBuilder {
        return new StatusRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithMatchItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/matches/{matchId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
