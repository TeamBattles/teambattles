<?php

namespace TeamBattles\Sdk\Generated\Twitch\Streams;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Twitch\Streams\History\HistoryRequestBuilder;
use TeamBattles\Sdk\Generated\Twitch\Streams\Signals\SignalsRequestBuilder;

/**
 * Builds and executes requests for operations under /twitch/streams
*/
class StreamsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The history property
    */
    public function history(): HistoryRequestBuilder {
        return new HistoryRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The signals property
    */
    public function signals(): SignalsRequestBuilder {
        return new SignalsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new StreamsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/twitch/streams');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
