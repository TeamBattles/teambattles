<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Matches\BatchScores;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\GameBatchMatchScoresBody;
use TeamBattles\Sdk\Generated\Models\GameBatchMatchScoresResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/batch-scores
*/
class BatchScoresRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new BatchScoresRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/matches/batch-scores');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key's bound league and returns a per-item result. Requires the league scores capability.
     * @param GameBatchMatchScoresBody $body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @param BatchScoresRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<GameBatchMatchScoresResponse|null>
     * @throws Exception
    */
    public function post(GameBatchMatchScoresBody $body, ?BatchScoresRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [GameBatchMatchScoresResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key's bound league and returns a per-item result. Requires the league scores capability.
     * @param GameBatchMatchScoresBody $body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @param BatchScoresRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(GameBatchMatchScoresBody $body, ?BatchScoresRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return BatchScoresRequestBuilder
    */
    public function withUrl(string $rawUrl): BatchScoresRequestBuilder {
        return new BatchScoresRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
