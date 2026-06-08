<?php

namespace TeamBattles\Sdk\Generated\Matches\Discover;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\MatchDiscoverBody;
use TeamBattles\Sdk\Generated\Models\MatchDiscoverPage;

/**
 * Builds and executes requests for operations under /matches/discover
*/
class DiscoverRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new DiscoverRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/discover');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns published pending open matches. League matches are excluded unless leagueId is provided. gameId and gameSlug are mutually exclusive. Requires matches.public_matches:read.
     * @param MatchDiscoverBody $body Filters and cursor pagination for public open-match discovery.
     * @param DiscoverRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<MatchDiscoverPage|null>
     * @throws Exception
    */
    public function post(MatchDiscoverBody $body, ?DiscoverRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [MatchDiscoverPage::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns published pending open matches. League matches are excluded unless leagueId is provided. gameId and gameSlug are mutually exclusive. Requires matches.public_matches:read.
     * @param MatchDiscoverBody $body Filters and cursor pagination for public open-match discovery.
     * @param DiscoverRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(MatchDiscoverBody $body, ?DiscoverRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return DiscoverRequestBuilder
    */
    public function withUrl(string $rawUrl): DiscoverRequestBuilder {
        return new DiscoverRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
