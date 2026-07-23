<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Invites\Item\Respond;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentInviteRespondBody;
use TeamBattles\Sdk\Generated\Models\TournamentInviteRespondResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/invites/{inviteId}/respond
*/
class RespondRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RespondRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
     * @param TournamentInviteRespondBody $body Captain response to a tournament invite.
     * @param RespondRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentInviteRespondResponse|null>
     * @throws Exception
    */
    public function post(TournamentInviteRespondBody $body, ?RespondRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentInviteRespondResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
     * @param TournamentInviteRespondBody $body Captain response to a tournament invite.
     * @param RespondRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentInviteRespondBody $body, ?RespondRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RespondRequestBuilder
    */
    public function withUrl(string $rawUrl): RespondRequestBuilder {
        return new RespondRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
