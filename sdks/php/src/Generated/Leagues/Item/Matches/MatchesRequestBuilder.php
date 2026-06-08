<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Matches;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Matches\BatchScores\BatchScoresRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Matches\Item\WithMatchItemRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches
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
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item.matches.item collection
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
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/matches');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
