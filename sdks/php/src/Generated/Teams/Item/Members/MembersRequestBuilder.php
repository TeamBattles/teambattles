<?php

namespace TeamBattles\Sdk\Generated\Teams\Item\Members;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Teams\Item\Members\Item\WithUserItemRequestBuilder;

/**
 * Builds and executes requests for operations under /teams/{identifier}/members
*/
class MembersRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.teams.item.members.item collection
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
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}/members');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
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
     * Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
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
