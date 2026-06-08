<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\ActivityFeed\ActivityFeedRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\ApplyEligibility\ApplyEligibilityRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Bans\BansRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Branding\BrandingRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Cooldowns\CooldownsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Dashboard\DashboardRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\DisplayRules\DisplayRulesRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Games\GamesRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Matches\MatchesRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Members\MembersRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Ownership\OwnershipRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Penalties\PenaltiesRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Points\PointsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Rules\RulesRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\SeasonOptions\SeasonOptionsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Seasons\SeasonsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Settings\SettingsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Shutdown\ShutdownRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Standings\StandingsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Teams\TeamsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Tickets\TicketsRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeagueProfileResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}
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
     * The applyEligibility property
    */
    public function applyEligibility(): ApplyEligibilityRequestBuilder {
        return new ApplyEligibilityRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The bans property
    */
    public function bans(): BansRequestBuilder {
        return new BansRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The branding property
    */
    public function branding(): BrandingRequestBuilder {
        return new BrandingRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The cooldowns property
    */
    public function cooldowns(): CooldownsRequestBuilder {
        return new CooldownsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The dashboard property
    */
    public function dashboard(): DashboardRequestBuilder {
        return new DashboardRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The displayRules property
    */
    public function displayRules(): DisplayRulesRequestBuilder {
        return new DisplayRulesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The games property
    */
    public function games(): GamesRequestBuilder {
        return new GamesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The matches property
    */
    public function matches(): MatchesRequestBuilder {
        return new MatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The members property
    */
    public function members(): MembersRequestBuilder {
        return new MembersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The ownership property
    */
    public function ownership(): OwnershipRequestBuilder {
        return new OwnershipRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The penalties property
    */
    public function penalties(): PenaltiesRequestBuilder {
        return new PenaltiesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The points property
    */
    public function points(): PointsRequestBuilder {
        return new PointsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The rules property
    */
    public function rules(): RulesRequestBuilder {
        return new RulesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The seasonOptions property
    */
    public function seasonOptions(): SeasonOptionsRequestBuilder {
        return new SeasonOptionsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The seasons property
    */
    public function seasons(): SeasonsRequestBuilder {
        return new SeasonsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The settings property
    */
    public function settings(): SettingsRequestBuilder {
        return new SettingsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The shutdown property
    */
    public function shutdown(): ShutdownRequestBuilder {
        return new ShutdownRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The standings property
    */
    public function standings(): StandingsRequestBuilder {
        return new StandingsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The teams property
    */
    public function teams(): TeamsRequestBuilder {
        return new TeamsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The tickets property
    */
    public function tickets(): TicketsRequestBuilder {
        return new TicketsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @param WithIdentifierItemRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeagueProfileResponse|null>
     * @throws Exception
    */
    public function post(?WithIdentifierItemRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeagueProfileResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @param WithIdentifierItemRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?WithIdentifierItemRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
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
