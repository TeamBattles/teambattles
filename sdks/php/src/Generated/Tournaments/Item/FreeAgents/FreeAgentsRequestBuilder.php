<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentFreeAgentsResponse;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents\Item\WithFreeAgentItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents
*/
class FreeAgentsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.freeAgents.item collection
     * @param string $freeAgentId Free-agent pool entry ID, as returned by GET /tournaments/{identifier}/free-agents.
     * @return WithFreeAgentItemRequestBuilder
    */
    public function byFreeAgentId(string $freeAgentId): WithFreeAgentItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['freeAgentId'] = $freeAgentId;
        return new WithFreeAgentItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new FreeAgentsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agents{?viewerParticipantId*}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
     * @param FreeAgentsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentFreeAgentsResponse|null>
     * @throws Exception
    */
    public function get(?FreeAgentsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentFreeAgentsResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
     * @param FreeAgentsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?FreeAgentsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            if ($requestConfiguration->queryParameters !== null) {
                $requestInfo->setQueryParameters($requestConfiguration->queryParameters);
            }
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return FreeAgentsRequestBuilder
    */
    public function withUrl(string $rawUrl): FreeAgentsRequestBuilder {
        return new FreeAgentsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
