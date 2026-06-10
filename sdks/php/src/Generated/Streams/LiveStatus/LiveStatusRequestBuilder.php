<?php

namespace TeamBattles\Sdk\Generated\Streams\LiveStatus;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\ApiBatchStreamStatusBody;
use TeamBattles\Sdk\Generated\Models\ApiBatchStreamStatusEnvelope;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /streams/live-status
*/
class LiveStatusRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new LiveStatusRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/streams/live-status');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
     * @param ApiBatchStreamStatusBody $body Batch live-status request body.
     * @param LiveStatusRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ApiBatchStreamStatusEnvelope|null>
     * @throws Exception
    */
    public function post(ApiBatchStreamStatusBody $body, ?LiveStatusRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ApiBatchStreamStatusEnvelope::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
     * @param ApiBatchStreamStatusBody $body Batch live-status request body.
     * @param LiveStatusRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(ApiBatchStreamStatusBody $body, ?LiveStatusRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        $requestInfo->setContentFromParsable($this->requestAdapter, "application/json", $body);
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return LiveStatusRequestBuilder
    */
    public function withUrl(string $rawUrl): LiveStatusRequestBuilder {
        return new LiveStatusRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
