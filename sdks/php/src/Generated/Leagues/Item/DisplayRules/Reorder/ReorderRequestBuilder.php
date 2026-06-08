<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\DisplayRules\Reorder;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\ReorderDisplayRulesRequestBody;
use TeamBattles\Sdk\Generated\Models\ReorderDisplayRulesResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/display-rules/reorder
*/
class ReorderRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ReorderRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/display-rules/reorder');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Reorders display rules for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param ReorderDisplayRulesRequestBody $body Reorders display rules.
     * @param ReorderRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ReorderDisplayRulesResponse|null>
     * @throws Exception
    */
    public function post(ReorderDisplayRulesRequestBody $body, ?ReorderRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ReorderDisplayRulesResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Reorders display rules for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param ReorderDisplayRulesRequestBody $body Reorders display rules.
     * @param ReorderRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(ReorderDisplayRulesRequestBody $body, ?ReorderRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ReorderRequestBuilder
    */
    public function withUrl(string $rawUrl): ReorderRequestBuilder {
        return new ReorderRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
