<?php

namespace TeamBattles\Sdk\Generated\Orgs\Item\Members;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\AddOrgMemberBody;
use TeamBattles\Sdk\Generated\Models\AddOrgMemberResponse;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Orgs\Item\Members\Item\WithUserItemRequestBuilder;

/**
 * Builds and executes requests for operations under /orgs/{identifier}/members
*/
class MembersRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.orgs.item.members.item collection
     * @param string $userId Convex user ID of the member to remove.
     * @return WithUserItemRequestBuilder
    */
    public function byUserId(string $userId): WithUserItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['userId'] = $userId;
        return new WithUserItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

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
     * Adds a user to the organization with the ADMIN or MEMBER role. The caller (key owner) must be an organization admin or owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.roster:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param AddOrgMemberBody $body Add a member to the organization.
     * @param MembersRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<AddOrgMemberResponse|null>
     * @throws Exception
    */
    public function post(AddOrgMemberBody $body, ?MembersRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [AddOrgMemberResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
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
     * Adds a user to the organization with the ADMIN or MEMBER role. The caller (key owner) must be an organization admin or owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.roster:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param AddOrgMemberBody $body Add a member to the organization.
     * @param MembersRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(AddOrgMemberBody $body, ?MembersRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return MembersRequestBuilder
    */
    public function withUrl(string $rawUrl): MembersRequestBuilder {
        return new MembersRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
