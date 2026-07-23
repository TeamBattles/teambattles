<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentProfileResponse;
use TeamBattles\Sdk\Generated\Tournaments\Item\ActivityFeed\ActivityFeedRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Applications\ApplicationsRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Bracket\BracketRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Cancel\CancelRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\FreeAgencyRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\FreeAgentsRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Invites\InvitesRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\LeaguePoints\LeaguePointsRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Me\MeRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\NodesRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\ParticipantsRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\RegenerateMatches\RegenerateMatchesRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Registration\RegistrationRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\RosterEntries\RosterEntriesRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Rounds\RoundsRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Staff\StaffRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Start\StartRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\SubmitForApproval\SubmitForApprovalRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Teams\TeamsRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Update\UpdateRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}
*/
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The activityFeed property
    */
    public function activityFeed(): ActivityFeedRequestBuilder {
        return new ActivityFeedRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The applications property
    */
    public function applications(): ApplicationsRequestBuilder {
        return new ApplicationsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The bracket property
    */
    public function bracket(): BracketRequestBuilder {
        return new BracketRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The cancel property
    */
    public function cancel(): CancelRequestBuilder {
        return new CancelRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The freeAgency property
    */
    public function freeAgency(): FreeAgencyRequestBuilder {
        return new FreeAgencyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The freeAgents property
    */
    public function freeAgents(): FreeAgentsRequestBuilder {
        return new FreeAgentsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The invites property
    */
    public function invites(): InvitesRequestBuilder {
        return new InvitesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The leaguePoints property
    */
    public function leaguePoints(): LeaguePointsRequestBuilder {
        return new LeaguePointsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The me property
    */
    public function me(): MeRequestBuilder {
        return new MeRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The nodes property
    */
    public function nodes(): NodesRequestBuilder {
        return new NodesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The participants property
    */
    public function participants(): ParticipantsRequestBuilder {
        return new ParticipantsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The regenerateMatches property
    */
    public function regenerateMatches(): RegenerateMatchesRequestBuilder {
        return new RegenerateMatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The registration property
    */
    public function registration(): RegistrationRequestBuilder {
        return new RegistrationRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The rosterEntries property
    */
    public function rosterEntries(): RosterEntriesRequestBuilder {
        return new RosterEntriesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The rounds property
    */
    public function rounds(): RoundsRequestBuilder {
        return new RoundsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The staff property
    */
    public function staff(): StaffRequestBuilder {
        return new StaffRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The start property
    */
    public function start(): StartRequestBuilder {
        return new StartRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The submitForApproval property
    */
    public function submitForApproval(): SubmitForApprovalRequestBuilder {
        return new SubmitForApprovalRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The teams property
    */
    public function teams(): TeamsRequestBuilder {
        return new TeamsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The update property
    */
    public function update(): UpdateRequestBuilder {
        return new UpdateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
     * @param WithIdentifierItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentProfileResponse|null>
     * @throws Exception
    */
    public function get(?WithIdentifierItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentProfileResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
     * @param WithIdentifierItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WithIdentifierItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return WithIdentifierItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithIdentifierItemRequestBuilder {
        return new WithIdentifierItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
