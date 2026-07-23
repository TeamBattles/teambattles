<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\RosterEntries\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/roster-entries/{rosterEntryId}
*/
class WithRosterEntryItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new WithRosterEntryItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/roster-entries/{rosterEntryId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
     * @param WithRosterEntryItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function delete(?WithRosterEntryItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toDeleteRequestInformation($requestConfiguration);
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
     * Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
     * @param WithRosterEntryItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toDeleteRequestInformation(?WithRosterEntryItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::DELETE;
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
     * @return WithRosterEntryItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithRosterEntryItemRequestBuilder {
        return new WithRosterEntryItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
