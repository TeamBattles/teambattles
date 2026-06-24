<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Acceptances;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Matches\Item\Acceptances\Item\WithAcceptanceItemRequestBuilder;

/**
 * Builds and executes requests for operations under /matches/{matchId}/acceptances
*/
class AcceptancesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.matches.item.acceptances.item collection
     * @param string $acceptanceId Match acceptance ID.
     * @return WithAcceptanceItemRequestBuilder
    */
    public function byAcceptanceId(string $acceptanceId): WithAcceptanceItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['acceptanceId'] = $acceptanceId;
        return new WithAcceptanceItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new AcceptancesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/{matchId}/acceptances');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
