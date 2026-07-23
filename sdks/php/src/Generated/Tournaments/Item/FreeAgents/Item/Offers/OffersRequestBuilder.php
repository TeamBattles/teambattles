<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\Item\Offers;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentSendOfferBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}/offers
*/
class OffersRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new OffersRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
     * @param TournamentSendOfferBody $body Free-agent pickup offer payload.
     * @param OffersRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentSendOfferBody $body, ?OffersRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
     * Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
     * @param TournamentSendOfferBody $body Free-agent pickup offer payload.
     * @param OffersRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentSendOfferBody $body, ?OffersRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return OffersRequestBuilder
    */
    public function withUrl(string $rawUrl): OffersRequestBuilder {
        return new OffersRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
