<?php

namespace TeamBattles\Sdk\Generated\Game\Matches\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Game\Matches\Item\Forfeit\ForfeitRequestBuilder;
use TeamBattles\Sdk\Generated\Game\Matches\Item\PlayerStats\PlayerStatsRequestBuilder;
use TeamBattles\Sdk\Generated\Game\Matches\Item\Rosters\RostersRequestBuilder;
use TeamBattles\Sdk\Generated\Game\Matches\Item\Scores\ScoresRequestBuilder;
use TeamBattles\Sdk\Generated\Game\Matches\Item\Status\StatusRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameMatchDetailResponse;

/**
 * Builds and executes requests for operations under /game/matches/{matchId}
*/
class WithMatchItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The forfeit property
    */
    public function forfeit(): ForfeitRequestBuilder {
        return new ForfeitRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The playerStats property
    */
    public function playerStats(): PlayerStatsRequestBuilder {
        return new PlayerStatsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The rosters property
    */
    public function rosters(): RostersRequestBuilder {
        return new RostersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The scores property
    */
    public function scores(): ScoresRequestBuilder {
        return new ScoresRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The status property
    */
    public function status(): StatusRequestBuilder {
        return new StatusRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithMatchItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/game/matches/{matchId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
     * @param WithMatchItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameMatchDetailResponse|null>
     * @throws Exception
    */
    public function get(?WithMatchItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameMatchDetailResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
     * @param WithMatchItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WithMatchItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return WithMatchItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithMatchItemRequestBuilder {
        return new WithMatchItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
