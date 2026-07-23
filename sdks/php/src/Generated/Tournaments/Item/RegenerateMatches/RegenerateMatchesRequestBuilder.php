<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\RegenerateMatches;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentRegenerateMatchesRequestBody;
use TeamBattles\Sdk\Generated\Models\TournamentRegenerateMatchesResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/regenerate-matches
*/
class RegenerateMatchesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RegenerateMatchesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/regenerate-matches');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentRegenerateMatchesRequestBody $body Confirmation payload for the match-regeneration repair lever.
     * @param RegenerateMatchesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentRegenerateMatchesResponse|null>
     * @throws Exception
    */
    public function post(TournamentRegenerateMatchesRequestBody $body, ?RegenerateMatchesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentRegenerateMatchesResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentRegenerateMatchesRequestBody $body Confirmation payload for the match-regeneration repair lever.
     * @param RegenerateMatchesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentRegenerateMatchesRequestBody $body, ?RegenerateMatchesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RegenerateMatchesRequestBuilder
    */
    public function withUrl(string $rawUrl): RegenerateMatchesRequestBuilder {
        return new RegenerateMatchesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
