<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\Item\Revoke;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers/{offerId}/revoke
*/
class RevokeRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RevokeRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/revoke');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
     * @param RevokeRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(?RevokeRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
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
     * Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
     * @param RevokeRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?RevokeRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RevokeRequestBuilder
    */
    public function withUrl(string $rawUrl): RevokeRequestBuilder {
        return new RevokeRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
