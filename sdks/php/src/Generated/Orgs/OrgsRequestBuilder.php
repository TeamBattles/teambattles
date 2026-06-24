<?php

namespace TeamBattles\Sdk\Generated\Orgs;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\CreateOrgBody;
use TeamBattles\Sdk\Generated\Models\CreateOrgResponse;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Orgs\Discover\DiscoverRequestBuilder;
use TeamBattles\Sdk\Generated\Orgs\Item\WithIdentifierItemRequestBuilder;

/**
 * Builds and executes requests for operations under /orgs
*/
class OrgsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The discover property
    */
    public function discover(): DiscoverRequestBuilder {
        return new DiscoverRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.orgs.item collection
     * @param string $identifier Organization slug or Convex organization ID.
     * @return WithIdentifierItemRequestBuilder
    */
    public function byIdentifier(string $identifier): WithIdentifierItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['identifier'] = $identifier;
        return new WithIdentifierItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new OrgsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/orgs');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param CreateOrgBody $body Creates a new organization as the API key owner.
     * @param OrgsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<CreateOrgResponse|null>
     * @throws Exception
    */
    public function post(CreateOrgBody $body, ?OrgsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [CreateOrgResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param CreateOrgBody $body Creates a new organization as the API key owner.
     * @param OrgsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(CreateOrgBody $body, ?OrgsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return OrgsRequestBuilder
    */
    public function withUrl(string $rawUrl): OrgsRequestBuilder {
        return new OrgsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
