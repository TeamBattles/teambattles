<?php

namespace TeamBattles\Sdk\Generated\User;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\User\Connections\ConnectionsRequestBuilder;
use TeamBattles\Sdk\Generated\User\GameRanks\GameRanksRequestBuilder;
use TeamBattles\Sdk\Generated\User\Matches\MatchesRequestBuilder;
use TeamBattles\Sdk\Generated\User\OngoingMatches\OngoingMatchesRequestBuilder;

/**
 * Builds and executes requests for operations under /user
*/
class UserRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The connections property
    */
    public function connections(): ConnectionsRequestBuilder {
        return new ConnectionsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The gameRanks property
    */
    public function gameRanks(): GameRanksRequestBuilder {
        return new GameRanksRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The matches property
    */
    public function matches(): MatchesRequestBuilder {
        return new MatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The ongoingMatches property
    */
    public function ongoingMatches(): OngoingMatchesRequestBuilder {
        return new OngoingMatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new UserRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/user');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
