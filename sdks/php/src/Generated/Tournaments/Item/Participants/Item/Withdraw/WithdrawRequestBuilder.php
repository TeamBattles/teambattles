<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Withdraw;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/withdraw
*/
class WithdrawRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new WithdrawRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
     * @param WithdrawRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(?WithdrawRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
     * Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
     * @param WithdrawRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?WithdrawRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return WithdrawRequestBuilder
    */
    public function withUrl(string $rawUrl): WithdrawRequestBuilder {
        return new WithdrawRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
