<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Item\Forfeit;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameForfeitBody;
use TeamBattles\Sdk\Generated\Models\GameForfeitResponse;

/**
 * Builds and executes requests for operations under /game/matches/{matchId}/forfeit
*/
class ForfeitRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ForfeitRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/{matchId}/forfeit');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Forfeits the match for the supplied team; the other participating team wins. Valid only while the match is ACCEPTED, READY, or IN_PROGRESS. Requires the game.lifecycle:read-write permission and a key bound to the match's game. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param GameForfeitBody $body Request body for forfeiting a match on behalf of one participating team.
     * @param ForfeitRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameForfeitResponse|null>
     * @throws Exception
    */
    public function post(GameForfeitBody $body, ?ForfeitRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameForfeitResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Forfeits the match for the supplied team; the other participating team wins. Valid only while the match is ACCEPTED, READY, or IN_PROGRESS. Requires the game.lifecycle:read-write permission and a key bound to the match's game. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param GameForfeitBody $body Request body for forfeiting a match on behalf of one participating team.
     * @param ForfeitRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GameForfeitBody $body, ?ForfeitRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ForfeitRequestBuilder
    */
    public function withUrl(string $rawUrl): ForfeitRequestBuilder {
        return new ForfeitRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
