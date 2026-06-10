<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Stream;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\ApiStreamStatusEnvelope;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /users/{identifier}/stream
*/
class StreamRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new StreamRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/users/{identifier}/stream');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns whether a user is live, the platforms they are live on, and their primary (highest-viewer) stream details. The {identifier} may be a username or a Convex user ID. Visible for public or limited profiles, plus self; a private non-self profile returns 403. Unknown or currently-banned users return 404 (a banned user's existence is not leaked). When offline, isLive is false, platforms is empty, and primaryStream is null. Requires stream.read.
     * @param StreamRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ApiStreamStatusEnvelope|null>
     * @throws Exception
    */
    public function get(?StreamRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ApiStreamStatusEnvelope::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns whether a user is live, the platforms they are live on, and their primary (highest-viewer) stream details. The {identifier} may be a username or a Convex user ID. Visible for public or limited profiles, plus self; a private non-self profile returns 403. Unknown or currently-banned users return 404 (a banned user's existence is not leaked). When offline, isLive is false, platforms is empty, and primaryStream is null. Requires stream.read.
     * @param StreamRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?StreamRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return StreamRequestBuilder
    */
    public function withUrl(string $rawUrl): StreamRequestBuilder {
        return new StreamRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
