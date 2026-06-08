<?php

namespace TeamBattles\Sdk\Generated\Leaderboards;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leaderboards\Organizations\OrganizationsRequestBuilder;
use TeamBattles\Sdk\Generated\Leaderboards\Players\PlayersRequestBuilder;
use TeamBattles\Sdk\Generated\Leaderboards\Teams\TeamsRequestBuilder;

/**
 * Builds and executes requests for operations under /leaderboards
*/
class LeaderboardsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The organizations property
    */
    public function organizations(): OrganizationsRequestBuilder {
        return new OrganizationsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The players property
    */
    public function players(): PlayersRequestBuilder {
        return new PlayersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The teams property
    */
    public function teams(): TeamsRequestBuilder {
        return new TeamsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new LeaderboardsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leaderboards');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
