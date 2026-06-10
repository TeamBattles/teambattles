<?php

namespace TeamBattles\Sdk\Generated\Orgs\Item\Members;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /orgs/{identifier}/members
*/
class MembersRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new MembersRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/orgs/{identifier}/members');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns every active member of the organization in a single response. This list is not paginated and accepts no limit or cursor parameter. Members are sorted by role (owner first, then admin, manager, and member; unrecognized roles tie with member). Each row's `id` is the membership row ID, not the user ID, and the row carries the member's API-safe user profile, role label, and join timestamp. Visible only when the organization profile is public, or when the API key owner is an active member of the organization; otherwise this returns 403. A non-existent or inactive organization returns 404. Requires orgs.profile:read.
     * @param MembersRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<MembersGetResponse|null>
     * @throws Exception
    */
    public function get(?MembersRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [MembersGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns every active member of the organization in a single response. This list is not paginated and accepts no limit or cursor parameter. Members are sorted by role (owner first, then admin, manager, and member; unrecognized roles tie with member). Each row's `id` is the membership row ID, not the user ID, and the row carries the member's API-safe user profile, role label, and join timestamp. Visible only when the organization profile is public, or when the API key owner is an active member of the organization; otherwise this returns 403. A non-existent or inactive organization returns 404. Requires orgs.profile:read.
     * @param MembersRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?MembersRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return MembersRequestBuilder
    */
    public function withUrl(string $rawUrl): MembersRequestBuilder {
        return new MembersRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
