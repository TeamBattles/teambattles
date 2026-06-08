<?php

namespace TeamBattles\Sdk\Generated\Chat\Messages\Item\Report;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\ReportChatMessageRequestBody;
use TeamBattles\Sdk\Generated\Models\ReportChatMessageResponse;

/**
 * Builds and executes requests for operations under /chat/messages/{messageId}/report
*/
class ReportRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ReportRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/chat/messages/{messageId}/report');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param ReportChatMessageRequestBody $body Reports a chat message for staff moderation review.
     * @param ReportRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ReportChatMessageResponse|null>
     * @throws Exception
    */
    public function post(ReportChatMessageRequestBody $body, ?ReportRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [ReportChatMessageResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param ReportChatMessageRequestBody $body Reports a chat message for staff moderation review.
     * @param ReportRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(ReportChatMessageRequestBody $body, ?ReportRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ReportRequestBuilder
    */
    public function withUrl(string $rawUrl): ReportRequestBuilder {
        return new ReportRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
