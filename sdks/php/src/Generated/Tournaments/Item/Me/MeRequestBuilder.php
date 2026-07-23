<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Me;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\MyTournamentEntryResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/me
*/
class MeRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new MeRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/me');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
     * @param MeRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<MyTournamentEntryResponse|null>
     * @throws Exception
    */
    public function get(?MeRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [MyTournamentEntryResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
     * @param MeRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?MeRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return MeRequestBuilder
    */
    public function withUrl(string $rawUrl): MeRequestBuilder {
        return new MeRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
