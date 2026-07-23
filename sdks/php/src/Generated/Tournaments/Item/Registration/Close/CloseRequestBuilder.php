<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Registration\Close;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentCloseRegistrationResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/registration/close
*/
class CloseRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new CloseRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/registration/close');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Moves a REGISTRATION_OPEN tournament to REGISTRATION_CLOSED. Takes no request body. Any other status answers 400. This is REVERSIBLE - registration can be re-opened from REGISTRATION_CLOSED. Unlike opening, closing emits NO webhook and does not change the tournament's public listing, so a webhook consumer will not observe this transition; poll the tournament if you need to react to it. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param CloseRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentCloseRegistrationResponse|null>
     * @throws Exception
    */
    public function post(?CloseRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentCloseRegistrationResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Moves a REGISTRATION_OPEN tournament to REGISTRATION_CLOSED. Takes no request body. Any other status answers 400. This is REVERSIBLE - registration can be re-opened from REGISTRATION_CLOSED. Unlike opening, closing emits NO webhook and does not change the tournament's public listing, so a webhook consumer will not observe this transition; poll the tournament if you need to react to it. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param CloseRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?CloseRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
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
     * @return CloseRequestBuilder
    */
    public function withUrl(string $rawUrl): CloseRequestBuilder {
        return new CloseRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
