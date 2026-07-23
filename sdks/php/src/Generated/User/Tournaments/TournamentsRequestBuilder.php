<?php

namespace TeamBattles\Sdk\Generated\User\Tournaments;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\MyTournamentsResponse;
use TeamBattles\Sdk\Generated\User\Tournaments\Calendar\CalendarRequestBuilder;

/**
 * Builds and executes requests for operations under /user/tournaments
*/
class TournamentsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The calendar property
    */
    public function calendar(): CalendarRequestBuilder {
        return new CalendarRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new TournamentsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/user/tournaments');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the tournaments the API key owner hosts or holds tournament staff on, including drafts and unapproved ones. Ordered attention-first, then most recently updated, and capped at 100. Requires tournaments.tournament_admin:read - the public read scope is deliberately insufficient because this surface exposes unlisted tournaments.
     * @param TournamentsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<MyTournamentsResponse|null>
     * @throws Exception
    */
    public function get(?TournamentsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [MyTournamentsResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the tournaments the API key owner hosts or holds tournament staff on, including drafts and unapproved ones. Ordered attention-first, then most recently updated, and capped at 100. Requires tournaments.tournament_admin:read - the public read scope is deliberately insufficient because this surface exposes unlisted tournaments.
     * @param TournamentsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?TournamentsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return TournamentsRequestBuilder
    */
    public function withUrl(string $rawUrl): TournamentsRequestBuilder {
        return new TournamentsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
