<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Teams;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /users/{identifier}/teams
*/
class TeamsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new TeamsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/users/{identifier}/teams');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
     * @param TeamsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TeamsGetResponse|null>
     * @throws Exception
    */
    public function get(?TeamsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TeamsGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
     * @param TeamsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?TeamsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return TeamsRequestBuilder
    */
    public function withUrl(string $rawUrl): TeamsRequestBuilder {
        return new TeamsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
