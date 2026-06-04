<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Item\Scores\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameSingleMapScoreBody;
use TeamBattles\Sdk\Generated\Models\GameSingleMapScoreResponse;

/**
 * Builds and executes requests for operations under /game/matches/{matchId}/scores/{mapIndex}
*/
class WithMapIndexItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new WithMapIndexItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/{matchId}/scores/{mapIndex}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Submits the score for one map (mapIndex from the path); game-developer scores are auto-confirmed. Requires the game.scores:write permission.
     * @param GameSingleMapScoreBody $body Request body for submitting a single map's score (mapIndex comes from the path).
     * @param WithMapIndexItemRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameSingleMapScoreResponse|null>
     * @throws Exception
    */
    public function post(GameSingleMapScoreBody $body, ?WithMapIndexItemRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameSingleMapScoreResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Submits the score for one map (mapIndex from the path); game-developer scores are auto-confirmed. Requires the game.scores:write permission.
     * @param GameSingleMapScoreBody $body Request body for submitting a single map's score (mapIndex comes from the path).
     * @param WithMapIndexItemRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GameSingleMapScoreBody $body, ?WithMapIndexItemRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return WithMapIndexItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithMapIndexItemRequestBuilder {
        return new WithMapIndexItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
