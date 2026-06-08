<?php

namespace TeamBattles\Sdk\Generated\Strategies\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\ApiStrategyEnvelope;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Strategies\Item\Shapes\ShapesRequestBuilder;

/**
 * Builds and executes requests for operations under /strategies/{slug}
*/
class WithSlugItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The shapes property
    */
    public function shapes(): ShapesRequestBuilder {
        return new ShapesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithSlugItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/strategies/{slug}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
     * @param WithSlugItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ApiStrategyEnvelope|null>
     * @throws Exception
    */
    public function get(?WithSlugItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ApiStrategyEnvelope::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
     * @param WithSlugItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WithSlugItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return WithSlugItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithSlugItemRequestBuilder {
        return new WithSlugItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
