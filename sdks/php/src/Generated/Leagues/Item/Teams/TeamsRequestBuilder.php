<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Teams;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Teams\Item\WithLeagueTeamItemRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams
*/
class TeamsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item.teams.item collection
     * @param string $leagueTeamId League team application ID.
     * @return WithLeagueTeamItemRequestBuilder
    */
    public function byLeagueTeamId(string $leagueTeamId): WithLeagueTeamItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['leagueTeamId'] = $leagueTeamId;
        return new WithLeagueTeamItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new TeamsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/teams');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
