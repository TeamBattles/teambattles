<?php

namespace TeamBattles\Sdk\Generated\Tournaments;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentCreateRequestBody;
use TeamBattles\Sdk\Generated\Models\TournamentCreateResponse;
use TeamBattles\Sdk\Generated\Tournaments\Discover\DiscoverRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\WithIdentifierItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments
*/
class TournamentsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The discover property
    */
    public function discover(): DiscoverRequestBuilder {
        return new DiscoverRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item collection
     * @param string $identifier Tournament slug.
     * @return WithIdentifierItemRequestBuilder
    */
    public function byIdentifier(string $identifier): WithIdentifierItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['identifier'] = $identifier;
        return new WithIdentifierItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new TournamentsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person's developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
     * @param TournamentCreateRequestBody $body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
     * @param TournamentsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentCreateResponse|null>
     * @throws Exception
    */
    public function post(TournamentCreateRequestBody $body, ?TournamentsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentCreateResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person's developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
     * @param TournamentCreateRequestBody $body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
     * @param TournamentsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentCreateRequestBody $body, ?TournamentsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return TournamentsRequestBuilder
    */
    public function withUrl(string $rawUrl): TournamentsRequestBuilder {
        return new TournamentsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
