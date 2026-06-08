<?php

namespace TeamBattles\Sdk\Generated\Uploads\ImageUrl;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\ImageUploadUrlResponse;

/**
 * Builds and executes requests for operations under /uploads/image-url
*/
class ImageUrlRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ImageUrlRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/uploads/image-url');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param ImageUrlRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ImageUploadUrlResponse|null>
     * @throws Exception
    */
    public function post(?ImageUrlRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ImageUploadUrlResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param ImageUrlRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?ImageUrlRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
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
     * @return ImageUrlRequestBuilder
    */
    public function withUrl(string $rawUrl): ImageUrlRequestBuilder {
        return new ImageUrlRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
