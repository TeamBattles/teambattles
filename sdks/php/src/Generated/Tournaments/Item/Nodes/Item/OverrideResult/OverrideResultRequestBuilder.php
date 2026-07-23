<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\Item\OverrideResult;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentOverrideNodeResultBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}/override-result
*/
class OverrideResultRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new OverrideResultRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
     * @param TournamentOverrideNodeResultBody $body Bracket node result override payload.
     * @param OverrideResultRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentOverrideNodeResultBody $body, ?OverrideResultRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentWriteAck::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
     * @param TournamentOverrideNodeResultBody $body Bracket node result override payload.
     * @param OverrideResultRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentOverrideNodeResultBody $body, ?OverrideResultRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return OverrideResultRequestBuilder
    */
    public function withUrl(string $rawUrl): OverrideResultRequestBuilder {
        return new OverrideResultRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
