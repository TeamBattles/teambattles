<?php

namespace TeamBattles\Sdk\Generated\Twitch;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Twitch\Badges\BadgesRequestBuilder;

/**
 * Builds and executes requests for operations under /twitch
*/
class TwitchRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The badges property
    */
    public function badges(): BadgesRequestBuilder {
        return new BadgesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new TwitchRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/twitch');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
