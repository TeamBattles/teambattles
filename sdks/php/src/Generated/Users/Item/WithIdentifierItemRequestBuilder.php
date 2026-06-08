<?php

namespace TeamBattles\Sdk\Generated\Users\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Users\Item\Connections\ConnectionsRequestBuilder;
use TeamBattles\Sdk\Generated\Users\Item\Organizations\OrganizationsRequestBuilder;
use TeamBattles\Sdk\Generated\Users\Item\Stats\StatsRequestBuilder;
use TeamBattles\Sdk\Generated\Users\Item\Stream\StreamRequestBuilder;
use TeamBattles\Sdk\Generated\Users\Item\Teams\TeamsRequestBuilder;
use TeamBattles\Sdk\Generated\Users\Item\Trophies\TrophiesRequestBuilder;

/**
 * Builds and executes requests for operations under /users/{identifier}
*/
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The connections property
    */
    public function connections(): ConnectionsRequestBuilder {
        return new ConnectionsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The organizations property
    */
    public function organizations(): OrganizationsRequestBuilder {
        return new OrganizationsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The stats property
    */
    public function stats(): StatsRequestBuilder {
        return new StatsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The stream property
    */
    public function stream(): StreamRequestBuilder {
        return new StreamRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The teams property
    */
    public function teams(): TeamsRequestBuilder {
        return new TeamsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The trophies property
    */
    public function trophies(): TrophiesRequestBuilder {
        return new TrophiesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/users/{identifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
     * @param WithIdentifierItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WithIdentifierGetResponse|null>
     * @throws Exception
    */
    public function get(?WithIdentifierItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WithIdentifierGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
     * @param WithIdentifierItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WithIdentifierItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return WithIdentifierItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithIdentifierItemRequestBuilder {
        return new WithIdentifierItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
