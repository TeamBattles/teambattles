<?php

namespace TeamBattles\Sdk\Generated\Chat\Messages;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Chat\Messages\Item\WithMessageItemRequestBuilder;

/**
 * Builds and executes requests for operations under /chat/messages
*/
class MessagesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.chat.messages.item collection
     * @param string $messageId ID of the chat message to report.
     * @return WithMessageItemRequestBuilder
    */
    public function byMessageId(string $messageId): WithMessageItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['messageId'] = $messageId;
        return new WithMessageItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new MessagesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/chat/messages');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
