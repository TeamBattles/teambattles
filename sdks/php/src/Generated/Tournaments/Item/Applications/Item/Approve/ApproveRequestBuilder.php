<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Applications\Item\Approve;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/applications/{participantId}/approve
*/
class ApproveRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ApproveRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/applications/{participantId}/approve');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Approves a PENDING application, moving the team into the tournament and incrementing the participant count. Answers 409 error_tournament_full when the tournament is at capacity and 400 error_invalid_input when the application is not pending. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies. A participant belonging to another tournament answers 404, identically to an unknown one.
     * @param ApproveRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(?ApproveRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentWriteAck::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Approves a PENDING application, moving the team into the tournament and incrementing the participant count. Answers 409 error_tournament_full when the tournament is at capacity and 400 error_invalid_input when the application is not pending. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies. A participant belonging to another tournament answers 404, identically to an unknown one.
     * @param ApproveRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?ApproveRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ApproveRequestBuilder
    */
    public function withUrl(string $rawUrl): ApproveRequestBuilder {
        return new ApproveRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
