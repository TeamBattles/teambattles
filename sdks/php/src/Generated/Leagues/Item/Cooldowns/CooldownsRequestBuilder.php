<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Cooldowns;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Cooldowns\Config\ConfigRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Cooldowns\Issue\IssueRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Cooldowns\Item\WithCooldownItemRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns
*/
class CooldownsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The config property
    */
    public function config(): ConfigRequestBuilder {
        return new ConfigRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The issue property
    */
    public function issue(): IssueRequestBuilder {
        return new IssueRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item.cooldowns.item collection
     * @param string $cooldownId League member cooldown ID.
     * @return WithCooldownItemRequestBuilder
    */
    public function byCooldownId(string $cooldownId): WithCooldownItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['cooldownId'] = $cooldownId;
        return new WithCooldownItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new CooldownsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/cooldowns');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
