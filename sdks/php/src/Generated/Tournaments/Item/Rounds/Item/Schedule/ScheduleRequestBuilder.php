<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Rounds\Item\Schedule;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentRoundScheduleRequestBody;
use TeamBattles\Sdk\Generated\Models\TournamentRoundScheduleResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/rounds/{roundId}/schedule
*/
class ScheduleRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ScheduleRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/rounds/{roundId}/schedule');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentRoundScheduleRequestBody $body Round schedule payload.
     * @param ScheduleRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentRoundScheduleResponse|null>
     * @throws Exception
    */
    public function post(TournamentRoundScheduleRequestBody $body, ?ScheduleRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentRoundScheduleResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentRoundScheduleRequestBody $body Round schedule payload.
     * @param ScheduleRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentRoundScheduleRequestBody $body, ?ScheduleRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ScheduleRequestBuilder
    */
    public function withUrl(string $rawUrl): ScheduleRequestBuilder {
        return new ScheduleRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
