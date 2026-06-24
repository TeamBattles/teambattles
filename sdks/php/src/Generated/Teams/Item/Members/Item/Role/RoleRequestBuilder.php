<?php

namespace TeamBattles\Sdk\Generated\Teams\Item\Members\Item\Role;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\SetTeamMemberRoleBody;
use TeamBattles\Sdk\Generated\Models\SetTeamMemberRoleResponse;

/**
 * Builds and executes requests for operations under /teams/{identifier}/members/{userId}/role
*/
class RoleRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RoleRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}/members/{userId}/role');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Sets a team member's role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
     * @param SetTeamMemberRoleBody $body Set a team member's role.
     * @param RoleRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<SetTeamMemberRoleResponse|null>
     * @throws Exception
    */
    public function patch(SetTeamMemberRoleBody $body, ?RoleRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [SetTeamMemberRoleResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Sets a team member's role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
     * @param SetTeamMemberRoleBody $body Set a team member's role.
     * @param RoleRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(SetTeamMemberRoleBody $body, ?RoleRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::PATCH;
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
     * @return RoleRequestBuilder
    */
    public function withUrl(string $rawUrl): RoleRequestBuilder {
        return new RoleRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
