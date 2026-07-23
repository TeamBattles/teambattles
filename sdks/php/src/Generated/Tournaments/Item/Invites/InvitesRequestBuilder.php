<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Invites;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentInvitesResponse;
use TeamBattles\Sdk\Generated\Models\TournamentInviteTeamBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;
use TeamBattles\Sdk\Generated\Tournaments\Item\Invites\Item\WithInviteItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/invites
*/
class InvitesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.invites.item collection
     * @param string $inviteId Tournament invite ID, as returned by GET /tournaments/{identifier}/me for a team you lead.
     * @return WithInviteItemRequestBuilder
    */
    public function byInviteId(string $inviteId): WithInviteItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['inviteId'] = $inviteId;
        return new WithInviteItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new InvitesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/invites');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param InvitesRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentInvitesResponse|null>
     * @throws Exception
    */
    public function get(?InvitesRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentInvitesResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
     * @param TournamentInviteTeamBody $body Tournament team invitation payload.
     * @param InvitesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentInviteTeamBody $body, ?InvitesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
     * Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param InvitesRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?InvitesRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
     * @param TournamentInviteTeamBody $body Tournament team invitation payload.
     * @param InvitesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentInviteTeamBody $body, ?InvitesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return InvitesRequestBuilder
    */
    public function withUrl(string $rawUrl): InvitesRequestBuilder {
        return new InvitesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
