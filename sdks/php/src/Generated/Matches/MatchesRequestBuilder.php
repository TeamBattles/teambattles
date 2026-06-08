<?php

namespace TeamBattles\Sdk\Generated\Matches;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Matches\Create\CreateRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Discover\DiscoverRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\WithMatchItemRequestBuilder;

/**
 * Builds and executes requests for operations under /matches
*/
class MatchesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The create property
    */
    public function create(): CreateRequestBuilder {
        return new CreateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The discover property
    */
    public function discover(): DiscoverRequestBuilder {
        return new DiscoverRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.matches.item collection
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
        parent::__construct($requestAdapter, [], '{+baseurl}/matches');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
