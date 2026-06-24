<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Item\PlayerStats;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GamePlayerStatsBody;
use TeamBattles\Sdk\Generated\Models\GamePlayerStatsResponse;

/**
 * Builds and executes requests for operations under /game/matches/{matchId}/player-stats
*/
class PlayerStatsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new PlayerStatsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/{matchId}/player-stats');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match.
     * @param GamePlayerStatsBody $body Request body for submitting or updating player stats for an existing map score.
     * @param PlayerStatsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GamePlayerStatsResponse|null>
     * @throws Exception
    */
    public function post(GamePlayerStatsBody $body, ?PlayerStatsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GamePlayerStatsResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match.
     * @param GamePlayerStatsBody $body Request body for submitting or updating player stats for an existing map score.
     * @param PlayerStatsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GamePlayerStatsBody $body, ?PlayerStatsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return PlayerStatsRequestBuilder
    */
    public function withUrl(string $rawUrl): PlayerStatsRequestBuilder {
        return new PlayerStatsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
