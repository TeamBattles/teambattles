<?php

namespace TeamBattles\Sdk\Generated\Orgs\Item\Teams;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /orgs/{identifier}/teams
*/
class TeamsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new TeamsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/orgs/{identifier}/teams');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns an organization's active teams, resolved by slug or organization ID. Readable when the organization is public or the API key owner is an active member - otherwise responds 403. Members see all active teams; non-members do not receive private or disabled teams. The full result set is returned in one response with a count - there is no pagination, limit, or guaranteed sort order. Requires orgs.profile:read.
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
     * Returns an organization's active teams, resolved by slug or organization ID. Readable when the organization is public or the API key owner is an active member - otherwise responds 403. Members see all active teams; non-members do not receive private or disabled teams. The full result set is returned in one response with a count - there is no pagination, limit, or guaranteed sort order. Requires orgs.profile:read.
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
