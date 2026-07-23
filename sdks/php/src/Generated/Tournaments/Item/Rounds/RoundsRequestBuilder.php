<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Rounds;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\Rounds\Item\WithRoundItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/rounds
*/
class RoundsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.rounds.item collection
     * @param string $roundId Tournament round id.
     * @return WithRoundItemRequestBuilder
    */
    public function byRoundId(string $roundId): WithRoundItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['roundId'] = $roundId;
        return new WithRoundItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new RoundsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/rounds');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
