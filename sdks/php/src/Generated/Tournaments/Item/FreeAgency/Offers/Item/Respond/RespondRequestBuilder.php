<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\Item\Respond;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentOfferRespondBody;
use TeamBattles\Sdk\Generated\Models\TournamentOfferRespondResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers/{offerId}/respond
*/
class RespondRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RespondRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
     * @param TournamentOfferRespondBody $body Free agent's response to a pickup offer.
     * @param RespondRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentOfferRespondResponse|null>
     * @throws Exception
    */
    public function post(TournamentOfferRespondBody $body, ?RespondRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentOfferRespondResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
     * @param TournamentOfferRespondBody $body Free agent's response to a pickup offer.
     * @param RespondRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentOfferRespondBody $body, ?RespondRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
