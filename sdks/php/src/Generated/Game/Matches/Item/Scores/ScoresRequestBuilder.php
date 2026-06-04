<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Item\Scores;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Game\Matches\Item\Scores\Item\WithMapIndexItemRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameBatchScoresBody;
use TeamBattles\Sdk\Generated\Models\GameBatchScoresResponse;
use TeamBattles\Sdk\Generated\Models\GameScoresResponse;

/**
 * Builds and executes requests for operations under /game/matches/{matchId}/scores
*/
class ScoresRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.game.matches.item.scores.item collection
     * @param string $mapIndex Zero-based index of the map within the series.
     * @return WithMapIndexItemRequestBuilder
    */
    public function byMapIndex(string $mapIndex): WithMapIndexItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['mapIndex'] = $mapIndex;
        return new WithMapIndexItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new ScoresRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/{matchId}/scores');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
     * @param ScoresRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameScoresResponse|null>
     * @throws Exception
    */
    public function get(?ScoresRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameScoresResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
     * @param GameBatchScoresBody $body Request body for submitting one or more map scores in a single call.
     * @param ScoresRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameBatchScoresResponse|null>
     * @throws Exception
    */
    public function post(GameBatchScoresBody $body, ?ScoresRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameBatchScoresResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
     * @param ScoresRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?ScoresRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
     * @param GameBatchScoresBody $body Request body for submitting one or more map scores in a single call.
     * @param ScoresRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GameBatchScoresBody $body, ?ScoresRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ScoresRequestBuilder
    */
    public function withUrl(string $rawUrl): ScoresRequestBuilder {
        return new ScoresRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
