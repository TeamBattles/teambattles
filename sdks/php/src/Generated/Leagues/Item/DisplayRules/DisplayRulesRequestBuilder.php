<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\DisplayRules;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\DisplayRules\Item\WithDisplayRuleItemRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\DisplayRules\Reorder\ReorderRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\DisplayRules\Upsert\UpsertRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\LeagueDisplayRules;
use TeamBattles\Sdk\Generated\Models\LeagueDisplayRulesRequestBody;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/display-rules
*/
class DisplayRulesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The reorder property
    */
    public function reorder(): ReorderRequestBuilder {
        return new ReorderRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The upsert property
    */
    public function upsert(): UpsertRequestBuilder {
        return new UpsertRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item.displayRules.item collection
     * @param string $displayRuleId Display rule ID.
     * @return WithDisplayRuleItemRequestBuilder
    */
    public function byDisplayRuleId(string $displayRuleId): WithDisplayRuleItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['displayRuleId'] = $displayRuleId;
        return new WithDisplayRuleItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new DisplayRulesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/display-rules');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns display rules configured for a league game. Requires leagues.league_public:read.
     * @param LeagueDisplayRulesRequestBody $body Display rule selector.
     * @param DisplayRulesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<LeagueDisplayRules|null>
     * @throws Exception
    */
    public function post(LeagueDisplayRulesRequestBody $body, ?DisplayRulesRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [LeagueDisplayRules::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns display rules configured for a league game. Requires leagues.league_public:read.
     * @param LeagueDisplayRulesRequestBody $body Display rule selector.
     * @param DisplayRulesRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(LeagueDisplayRulesRequestBody $body, ?DisplayRulesRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return DisplayRulesRequestBuilder
    */
    public function withUrl(string $rawUrl): DisplayRulesRequestBuilder {
        return new DisplayRulesRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
