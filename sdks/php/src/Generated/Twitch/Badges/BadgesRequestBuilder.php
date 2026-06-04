<?php

namespace TeamBattles\Sdk\Generated\Twitch\Badges;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Twitch\Badges\Channel\ChannelRequestBuilder;
use TeamBattles\Sdk\Generated\Twitch\Badges\EscapedGlobal\GlobalRequestBuilder;

/**
 * Builds and executes requests for operations under /twitch/badges
*/
class BadgesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The channel property
    */
    public function channel(): ChannelRequestBuilder {
        return new ChannelRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The global property
    */
    public function escapedGlobal(): GlobalRequestBuilder {
        return new GlobalRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new BadgesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/twitch/badges');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
