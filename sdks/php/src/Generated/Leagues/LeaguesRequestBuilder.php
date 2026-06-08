<?php

namespace TeamBattles\Sdk\Generated\Leagues;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\WithIdentifierItemRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Templates\TemplatesRequestBuilder;
use TeamBattles\Sdk\Generated\Models\DiscoverLeaguesRequestBody;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /leagues
*/
class LeaguesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The templates property
    */
    public function templates(): TemplatesRequestBuilder {
        return new TemplatesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item collection
     * @param string $identifier League slug or Convex league ID.
     * @return WithIdentifierItemRequestBuilder
    */
    public function byIdentifier(string $identifier): WithIdentifierItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['identifier'] = $identifier;
        return new WithIdentifierItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new LeaguesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
     * @param DiscoverLeaguesRequestBody $body Filters and offset pagination for discovering leagues.
     * @param LeaguesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeaguesPostResponse|null>
     * @throws Exception
    */
    public function post(DiscoverLeaguesRequestBody $body, ?LeaguesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeaguesPostResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
     * @param DiscoverLeaguesRequestBody $body Filters and offset pagination for discovering leagues.
     * @param LeaguesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(DiscoverLeaguesRequestBody $body, ?LeaguesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return LeaguesRequestBuilder
    */
    public function withUrl(string $rawUrl): LeaguesRequestBuilder {
        return new LeaguesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
