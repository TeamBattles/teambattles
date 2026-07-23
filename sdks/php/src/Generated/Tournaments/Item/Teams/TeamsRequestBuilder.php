<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Teams;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\WithTeamIdentifierItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams
*/
class TeamsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.teams.item collection
     * @param string $teamIdentifier Slug of the team to act as. You must be its captain, co-captain, or the owner of the organization that owns it. A team you do not lead and a slug that does not resolve BOTH answer 403 error_not_team_leader, so that this path is not a team-slug enumeration oracle.
     * @return WithTeamIdentifierItemRequestBuilder
    */
    public function byTeamIdentifier(string $teamIdentifier): WithTeamIdentifierItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['teamIdentifier'] = $teamIdentifier;
        return new WithTeamIdentifierItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new TeamsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/teams');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
