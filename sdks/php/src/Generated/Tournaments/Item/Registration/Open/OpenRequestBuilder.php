<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Registration\Open;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentOpenRegistrationResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/registration/open
*/
class OpenRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new OpenRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/registration/open');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param OpenRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentOpenRegistrationResponse|null>
     * @throws Exception
    */
    public function post(?OpenRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentOpenRegistrationResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param OpenRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?OpenRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return OpenRequestBuilder
    */
    public function withUrl(string $rawUrl): OpenRequestBuilder {
        return new OpenRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
