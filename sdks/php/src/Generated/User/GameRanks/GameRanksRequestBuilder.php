<?php

namespace TeamBattles\Sdk\Generated\User\GameRanks;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameRankListResponse;
use TeamBattles\Sdk\Generated\Models\GameRankUpsertBody;
use TeamBattles\Sdk\Generated\Models\GameRankUpsertResponse;
use TeamBattles\Sdk\Generated\User\GameRanks\Item\WithGameItemRequestBuilder;

/**
 * Builds and executes requests for operations under /user/game-ranks
*/
class GameRanksRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.user.gameRanks.item collection
     * @param string $gameId Game definition ID of the rank to delete.
     * @return WithGameItemRequestBuilder
    */
    public function byGameId(string $gameId): WithGameItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['gameId'] = $gameId;
        return new WithGameItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new GameRanksRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/user/game-ranks');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @param GameRanksRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameRankListResponse|null>
     * @throws Exception
    */
    public function get(?GameRanksRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameRankListResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param GameRankUpsertBody $body Upsert the API key owner's rank for one (gameId, mode) slot.
     * @param GameRanksRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameRankUpsertResponse|null>
     * @throws Exception
    */
    public function post(GameRankUpsertBody $body, ?GameRanksRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameRankUpsertResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @param GameRanksRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?GameRanksRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param GameRankUpsertBody $body Upsert the API key owner's rank for one (gameId, mode) slot.
     * @param GameRanksRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GameRankUpsertBody $body, ?GameRanksRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return GameRanksRequestBuilder
    */
    public function withUrl(string $rawUrl): GameRanksRequestBuilder {
        return new GameRanksRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
