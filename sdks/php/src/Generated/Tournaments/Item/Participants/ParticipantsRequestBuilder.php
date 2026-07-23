<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Participants;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentParticipantsResponse;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\WithParticipantItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants
*/
class ParticipantsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.participants.item collection
     * @param string $participantId Tournament participant ID.
     * @return WithParticipantItemRequestBuilder
    */
    public function byParticipantId(string $participantId): WithParticipantItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['participantId'] = $participantId;
        return new WithParticipantItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new ParticipantsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/participants');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns every participating team with its tournament roster, resolved by slug. Includes pending, approved, withdrawn, and disqualified entries - filter on `status` for the active field. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
     * @param ParticipantsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentParticipantsResponse|null>
     * @throws Exception
    */
    public function get(?ParticipantsRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentParticipantsResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns every participating team with its tournament roster, resolved by slug. Includes pending, approved, withdrawn, and disqualified entries - filter on `status` for the active field. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
     * @param ParticipantsRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?ParticipantsRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ParticipantsRequestBuilder
    */
    public function withUrl(string $rawUrl): ParticipantsRequestBuilder {
        return new ParticipantsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
