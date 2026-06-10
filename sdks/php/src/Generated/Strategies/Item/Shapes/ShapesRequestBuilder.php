<?php

namespace TeamBattles\Sdk\Generated\Strategies\Item\Shapes;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\ApiStrategyShapesEnvelope;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /strategies/{slug}/shapes
*/
class ShapesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ShapesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/strategies/{slug}/shapes');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the canvas shapes of a shareable strategy resolved by its public share slug, ordered by stacking index (zIndex). Hidden working shapes are omitted. The full set is returned in a single response - there is no pagination - and the read is bounded to the first 2000 rows in stacking order, so a board larger than that is truncated. The same visibility gate as the strategy read applies (private returns 404 unless the API key owner owns it; public and unlisted are readable by any key). Requires strategies.read.
     * @param ShapesRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ApiStrategyShapesEnvelope|null>
     * @throws Exception
    */
    public function get(?ShapesRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ApiStrategyShapesEnvelope::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the canvas shapes of a shareable strategy resolved by its public share slug, ordered by stacking index (zIndex). Hidden working shapes are omitted. The full set is returned in a single response - there is no pagination - and the read is bounded to the first 2000 rows in stacking order, so a board larger than that is truncated. The same visibility gate as the strategy read applies (private returns 404 unless the API key owner owns it; public and unlisted are readable by any key). Requires strategies.read.
     * @param ShapesRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?ShapesRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ShapesRequestBuilder
    */
    public function withUrl(string $rawUrl): ShapesRequestBuilder {
        return new ShapesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
