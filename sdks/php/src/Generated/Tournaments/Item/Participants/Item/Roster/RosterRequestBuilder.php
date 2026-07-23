<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Roster;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentOrganizerRosterAddBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/roster
*/
class RosterRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RosterRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/participants/{participantId}/roster');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Adds a user to the named participant's tournament roster as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient here, because editing any participant's roster carries the same weight as issuing an invite; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. Answers 400 error_invalid_input when the user is not an active member of that team or is already rostered in this tournament. Requires the tournaments registration capability.
     * @param TournamentOrganizerRosterAddBody $body Organizer roster addition payload.
     * @param RosterRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentOrganizerRosterAddBody $body, ?RosterRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
     * Adds a user to the named participant's tournament roster as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient here, because editing any participant's roster carries the same weight as issuing an invite; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. Answers 400 error_invalid_input when the user is not an active member of that team or is already rostered in this tournament. Requires the tournaments registration capability.
     * @param TournamentOrganizerRosterAddBody $body Organizer roster addition payload.
     * @param RosterRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentOrganizerRosterAddBody $body, ?RosterRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RosterRequestBuilder
    */
    public function withUrl(string $rawUrl): RosterRequestBuilder {
        return new RosterRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
