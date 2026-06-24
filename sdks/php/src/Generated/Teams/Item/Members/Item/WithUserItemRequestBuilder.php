<?php

namespace TeamBattles\Sdk\Generated\Teams\Item\Members\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\RemoveTeamMemberResponse;
use TeamBattles\Sdk\Generated\Teams\Item\Members\Item\Role\RoleRequestBuilder;

/**
 * Builds and executes requests for operations under /teams/{identifier}/members/{userId}
*/
class WithUserItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The role property
    */
    public function role(): RoleRequestBuilder {
        return new RoleRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithUserItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}/members/{userId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Removes a member from a team, or removes yourself to leave it. To remove another member, the caller (key owner) must be the team captain or co-captain; any member may remove themselves. The team captain cannot be removed this way - disband the team or transfer captaincy first. Requires teams.roster:read-write.
     * @param WithUserItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<RemoveTeamMemberResponse|null>
     * @throws Exception
    */
    public function delete(?WithUserItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toDeleteRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [RemoveTeamMemberResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Removes a member from a team, or removes yourself to leave it. To remove another member, the caller (key owner) must be the team captain or co-captain; any member may remove themselves. The team captain cannot be removed this way - disband the team or transfer captaincy first. Requires teams.roster:read-write.
     * @param WithUserItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toDeleteRequestInformation(?WithUserItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::DELETE;
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
     * @return WithUserItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithUserItemRequestBuilder {
        return new WithUserItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
