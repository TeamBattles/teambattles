<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\Roster;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentTeamRosterAddBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;
use TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\Roster\Item\WithRosterEntryItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/roster
*/
class RosterRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.teams.item.roster.item collection
     * @param string $rosterEntryId Tournament roster entry ID.
     * @return WithRosterEntryItemRequestBuilder
    */
    public function byRosterEntryId(string $rosterEntryId): WithRosterEntryItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['rosterEntryId'] = $rosterEntryId;
        return new WithRosterEntryItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new RosterRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
     * @param TournamentTeamRosterAddBody $body Competitor roster addition payload.
     * @param RosterRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentTeamRosterAddBody $body, ?RosterRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentWriteAck::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
     * @param TournamentTeamRosterAddBody $body Competitor roster addition payload.
     * @param RosterRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentTeamRosterAddBody $body, ?RosterRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        $requestInfo->setContentFromParsable($this->requestAdapter, "application/json", $body);
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return RosterRequestBuilder
    */
    public function withUrl(string $rawUrl): RosterRequestBuilder {
        return new RosterRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
