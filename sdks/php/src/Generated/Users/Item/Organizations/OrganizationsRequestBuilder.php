<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Organizations;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /users/{identifier}/organizations
*/
class OrganizationsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new OrganizationsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/users/{identifier}/organizations');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the target user's active organization memberships, each as an API-safe organization summary plus the membership role and joinedAt. The identifier is a username or Convex user ID. Requires the users.profile:read scope. Readable only for public or limited profiles (or the API key owner's own profile); a private profile returns 403, and an unknown or banned user returns 404. For anyone other than the profile owner, non-public organizations are omitted; the owner sees all of their memberships. Not paginated - the full set is returned with a count, in no guaranteed order (not sorted by name or joinedAt).
     * @param OrganizationsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<OrganizationsGetResponse|null>
     * @throws Exception
    */
    public function get(?OrganizationsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [OrganizationsGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the target user's active organization memberships, each as an API-safe organization summary plus the membership role and joinedAt. The identifier is a username or Convex user ID. Requires the users.profile:read scope. Readable only for public or limited profiles (or the API key owner's own profile); a private profile returns 403, and an unknown or banned user returns 404. For anyone other than the profile owner, non-public organizations are omitted; the owner sees all of their memberships. Not paginated - the full set is returned with a count, in no guaranteed order (not sorted by name or joinedAt).
     * @param OrganizationsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?OrganizationsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return OrganizationsRequestBuilder
    */
    public function withUrl(string $rawUrl): OrganizationsRequestBuilder {
        return new OrganizationsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
