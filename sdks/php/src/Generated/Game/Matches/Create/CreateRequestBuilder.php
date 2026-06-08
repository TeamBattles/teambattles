<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Create;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameCreateMatchBody;
use TeamBattles\Sdk\Generated\Models\GameCreateMatchResponse;

/**
 * Builds and executes requests for operations under /game/matches/create
*/
class CreateRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new CreateRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/create');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Creates an ACCEPTED + PUBLISHED match for the API key's bound game between two active teams in that game. Requires the game.lifecycle:read-write permission. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key + body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param GameCreateMatchBody $body Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
     * @param CreateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameCreateMatchResponse|null>
     * @throws Exception
    */
    public function post(GameCreateMatchBody $body, ?CreateRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameCreateMatchResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Creates an ACCEPTED + PUBLISHED match for the API key's bound game between two active teams in that game. Requires the game.lifecycle:read-write permission. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key + body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param GameCreateMatchBody $body Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
     * @param CreateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GameCreateMatchBody $body, ?CreateRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return CreateRequestBuilder
    */
    public function withUrl(string $rawUrl): CreateRequestBuilder {
        return new CreateRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
