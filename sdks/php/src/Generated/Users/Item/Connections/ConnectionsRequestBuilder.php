<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Connections;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /users/{identifier}/connections
*/
class ConnectionsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ConnectionsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/users/{identifier}/connections');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
     * @param ConnectionsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ConnectionsGetResponse|null>
     * @throws Exception
    */
    public function get(?ConnectionsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ConnectionsGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
     * @param ConnectionsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?ConnectionsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ConnectionsRequestBuilder
    */
    public function withUrl(string $rawUrl): ConnectionsRequestBuilder {
        return new ConnectionsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
