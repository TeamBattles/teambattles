<?php

namespace TeamBattles\Sdk\Generated\Uploads\Image;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\BoundImageUploadResponse;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /uploads/image
*/
class ImageRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ImageRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/uploads/image');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param ImageRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<BoundImageUploadResponse|null>
     * @throws Exception
    */
    public function post(?ImageRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [BoundImageUploadResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param ImageRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?ImageRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ImageRequestBuilder
    */
    public function withUrl(string $rawUrl): ImageRequestBuilder {
        return new ImageRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
