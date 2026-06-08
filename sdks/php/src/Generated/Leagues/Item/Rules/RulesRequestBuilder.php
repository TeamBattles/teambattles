<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Rules;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\Rules\ApplyTemplate\ApplyTemplateRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Rules\Update\UpdateRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeagueRules;
use TeamBattles\Sdk\Generated\Models\RulesRequestBody;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/rules
*/
class RulesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The applyTemplate property
    */
    public function applyTemplate(): ApplyTemplateRequestBuilder {
        return new ApplyTemplateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The update property
    */
    public function update(): UpdateRequestBuilder {
        return new UpdateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new RulesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/rules');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the game rules and points configuration for a league + game, resolved by league slug. Requires the leagues.league_public:read permission.
     * @param RulesRequestBody $body Game selector for league rules and points config.
     * @param RulesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeagueRules|null>
     * @throws Exception
    */
    public function post(RulesRequestBody $body, ?RulesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeagueRules::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the game rules and points configuration for a league + game, resolved by league slug. Requires the leagues.league_public:read permission.
     * @param RulesRequestBody $body Game selector for league rules and points config.
     * @param RulesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(RulesRequestBody $body, ?RulesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return RulesRequestBuilder
    */
    public function withUrl(string $rawUrl): RulesRequestBuilder {
        return new RulesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
