<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Teams\Item\Enter;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentTeamEntryBody;
use TeamBattles\Sdk\Generated\Models\TournamentTeamEntryResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/enter
*/
class EnterRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new EnterRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/enter');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Registers a team you lead directly into an OPEN-registration tournament and returns its participant ID. The entry is immediately APPROVED and consumes a participant slot, so the request is rejected with 409 error_tournament_full at capacity. Use the sibling apply endpoint for APPLICATION-mode tournaments - a mode mismatch answers 400 error_invalid_input rather than silently doing the other thing. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment, which is the only channel the leadership check covers. Requires the tournaments actor entry capability at read-write.
     * @param TournamentTeamEntryBody $body Tournament entry payload for a team the caller leads.
     * @param EnterRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentTeamEntryResponse|null>
     * @throws Exception
    */
    public function post(TournamentTeamEntryBody $body, ?EnterRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentTeamEntryResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Registers a team you lead directly into an OPEN-registration tournament and returns its participant ID. The entry is immediately APPROVED and consumes a participant slot, so the request is rejected with 409 error_tournament_full at capacity. Use the sibling apply endpoint for APPLICATION-mode tournaments - a mode mismatch answers 400 error_invalid_input rather than silently doing the other thing. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment, which is the only channel the leadership check covers. Requires the tournaments actor entry capability at read-write.
     * @param TournamentTeamEntryBody $body Tournament entry payload for a team the caller leads.
     * @param EnterRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentTeamEntryBody $body, ?EnterRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return EnterRequestBuilder
    */
    public function withUrl(string $rawUrl): EnterRequestBuilder {
        return new EnterRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
