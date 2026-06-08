<?php

namespace TeamBattles\Sdk\Generated\Game\Matches;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Game\Matches\BatchScores\BatchScoresRequestBuilder;
use TeamBattles\Sdk\Generated\Game\Matches\Create\CreateRequestBuilder;
use TeamBattles\Sdk\Generated\Game\Matches\Item\WithMatchItemRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\ListGameMatchesBody;

/**
 * Builds and executes requests for operations under /game/matches
*/
class MatchesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The batchScores property
    */
    public function batchScores(): BatchScoresRequestBuilder {
        return new BatchScoresRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The create property
    */
    public function create(): CreateRequestBuilder {
        return new CreateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.game.matches.item collection
     * @param string $matchId Match ID.
     * @return WithMatchItemRequestBuilder
    */
    public function byMatchId(string $matchId): WithMatchItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['matchId'] = $matchId;
        return new WithMatchItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new MatchesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param ListGameMatchesBody $body Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
     * @param MatchesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<MatchesPostResponse|null>
     * @throws Exception
    */
    public function post(ListGameMatchesBody $body, ?MatchesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [MatchesPostResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param ListGameMatchesBody $body Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
     * @param MatchesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(ListGameMatchesBody $body, ?MatchesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return MatchesRequestBuilder
    */
    public function withUrl(string $rawUrl): MatchesRequestBuilder {
        return new MatchesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
