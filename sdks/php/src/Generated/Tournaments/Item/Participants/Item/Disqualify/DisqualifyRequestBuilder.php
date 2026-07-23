<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Disqualify;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentDisqualifyParticipantBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/disqualify
*/
class DisqualifyRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new DisqualifyRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/participants/{participantId}/disqualify');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
     * @param TournamentDisqualifyParticipantBody $body Participant disqualification payload.
     * @param DisqualifyRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentDisqualifyParticipantBody $body, ?DisqualifyRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
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
     * Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
     * @param TournamentDisqualifyParticipantBody $body Participant disqualification payload.
     * @param DisqualifyRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentDisqualifyParticipantBody $body, ?DisqualifyRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return DisqualifyRequestBuilder
    */
    public function withUrl(string $rawUrl): DisqualifyRequestBuilder {
        return new DisqualifyRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
