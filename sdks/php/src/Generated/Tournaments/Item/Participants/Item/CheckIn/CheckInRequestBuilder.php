<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\CheckIn;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/check-in
*/
class CheckInRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new CheckInRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
     * @param CheckInRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(?CheckInRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentWriteAck::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
     * @param CheckInRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?CheckInRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return CheckInRequestBuilder
    */
    public function withUrl(string $rawUrl): CheckInRequestBuilder {
        return new CheckInRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
