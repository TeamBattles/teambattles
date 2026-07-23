<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\Item\Remove;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}/remove
*/
class RemoveRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RemoveRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
     * @param RemoveRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(?RemoveRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
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
     * Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
     * @param RemoveRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?RemoveRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RemoveRequestBuilder
    */
    public function withUrl(string $rawUrl): RemoveRequestBuilder {
        return new RemoveRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
