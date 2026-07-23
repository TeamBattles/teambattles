<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgency\Offers\Item\WithOfferItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers
*/
class OffersRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.freeAgency.offers.item collection
     * @param string $offerId Free-agent pickup offer ID, as returned by GET /tournaments/{identifier}/me - inbound offers under `offers`.
     * @return WithOfferItemRequestBuilder
    */
    public function byOfferId(string $offerId): WithOfferItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['offerId'] = $offerId;
        return new WithOfferItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new OffersRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/free-agency/offers');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
