<?php

namespace TeamBattles\Sdk\Generated\User\GameRanks\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\User\GameRanks\Item\Item\WithModeItemRequestBuilder;

/**
 * Builds and executes requests for operations under /user/game-ranks/{gameId}
*/
class WithGameItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.user.gameRanks.item.item collection
     * @param string $mode Game mode / playlist of the rank to delete.
     * @return WithModeItemRequestBuilder
    */
    public function byMode(string $mode): WithModeItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['mode'] = $mode;
        return new WithModeItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new WithGameItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/user/game-ranks/{gameId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
