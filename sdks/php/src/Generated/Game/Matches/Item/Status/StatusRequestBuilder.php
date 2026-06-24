<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Item\Status;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameStatusUpdateBody;
use TeamBattles\Sdk\Generated\Models\GameStatusUpdateResponse;

/**
 * Builds and executes requests for operations under /game/matches/{matchId}/status
*/
class StatusRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new StatusRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/{matchId}/status');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission. Supports an optional `Idempotency-Key` request header that deduplicates concurrent duplicate submissions: while one request is in flight, a second request with the same key and body resolves to the same outcome, and the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match and per target status. Note that this endpoint validates the live match state first, so a sequential retry sent after the transition has already succeeded returns the normal transition error (error_match_not_in_valid_state) - the live state no longer permits the transition - rather than a replayed success.
     * @param GameStatusUpdateBody $body Request body for updating a match's lifecycle status.
     * @param StatusRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameStatusUpdateResponse|null>
     * @throws Exception
    */
    public function patch(GameStatusUpdateBody $body, ?StatusRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameStatusUpdateResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission. Supports an optional `Idempotency-Key` request header that deduplicates concurrent duplicate submissions: while one request is in flight, a second request with the same key and body resolves to the same outcome, and the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match and per target status. Note that this endpoint validates the live match state first, so a sequential retry sent after the transition has already succeeded returns the normal transition error (error_match_not_in_valid_state) - the live state no longer permits the transition - rather than a replayed success.
     * @param GameStatusUpdateBody $body Request body for updating a match's lifecycle status.
     * @param StatusRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(GameStatusUpdateBody $body, ?StatusRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::PATCH;
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
     * @return StatusRequestBuilder
    */
    public function withUrl(string $rawUrl): StatusRequestBuilder {
        return new StatusRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
