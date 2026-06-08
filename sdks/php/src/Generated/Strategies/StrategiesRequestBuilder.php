<?php

namespace TeamBattles\Sdk\Generated\Strategies;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Strategies\Item\WithSlugItemRequestBuilder;

/**
 * Builds and executes requests for operations under /strategies
*/
class StrategiesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.strategies.item collection
     * @param string $slug Strategy public share slug.
     * @return WithSlugItemRequestBuilder
    */
    public function bySlug(string $slug): WithSlugItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['slug'] = $slug;
        return new WithSlugItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new StrategiesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/strategies');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
