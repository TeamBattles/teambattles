<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Me;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentFreeAgencyJoinBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/me
*/
class MeRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new MeRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agency/me');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
     * @param MeRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function delete(?MeRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toDeleteRequestInformation($requestConfiguration);
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
     * Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
     * @param TournamentFreeAgencyJoinBody $body Free-agent pool listing payload for the API key owner.
     * @param MeRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentFreeAgencyJoinBody $body, ?MeRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentWriteAck::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
     * @param MeRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toDeleteRequestInformation(?MeRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::DELETE;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
     * @param TournamentFreeAgencyJoinBody $body Free-agent pool listing payload for the API key owner.
     * @param MeRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentFreeAgencyJoinBody $body, ?MeRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return MeRequestBuilder
    */
    public function withUrl(string $rawUrl): MeRequestBuilder {
        return new MeRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
