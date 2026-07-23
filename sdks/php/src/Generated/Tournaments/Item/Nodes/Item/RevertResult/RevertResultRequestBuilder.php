<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Nodes\Item\RevertResult;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentRevertNodeResultBody;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}/revert-result
*/
class RevertResultRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new RevertResultRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/revert-result');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Reverts an applied result on a COMPLETED or WALKOVER node and rolls the bracket back to it, cancelling the unplayed downstream matches the result created. The cascade policy is SHALLOW: answers 409 error_revert_blocked_downstream if any node the result fed has already been played, so revert a chain from its tip inwards. Answers 400 error_invalid_input when the tournament is not IN_PROGRESS, when the node has no applied result, or when a later swiss round has already been paired. `regenerateMatch` defaults to true. Requires the tournaments bracket capability and ADMIN authority - a tournament MODERATOR answers 403.
     * @param TournamentRevertNodeResultBody $body Bracket node result revert payload.
     * @param RevertResultRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentRevertNodeResultBody $body, ?RevertResultRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
     * Reverts an applied result on a COMPLETED or WALKOVER node and rolls the bracket back to it, cancelling the unplayed downstream matches the result created. The cascade policy is SHALLOW: answers 409 error_revert_blocked_downstream if any node the result fed has already been played, so revert a chain from its tip inwards. Answers 400 error_invalid_input when the tournament is not IN_PROGRESS, when the node has no applied result, or when a later swiss round has already been paired. `regenerateMatch` defaults to true. Requires the tournaments bracket capability and ADMIN authority - a tournament MODERATOR answers 403.
     * @param TournamentRevertNodeResultBody $body Bracket node result revert payload.
     * @param RevertResultRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentRevertNodeResultBody $body, ?RevertResultRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RevertResultRequestBuilder
    */
    public function withUrl(string $rawUrl): RevertResultRequestBuilder {
        return new RevertResultRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
