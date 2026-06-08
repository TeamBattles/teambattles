<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Settings\Enabled;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\SetLeagueEnabledRequestBody;
use TeamBattles\Sdk\Generated\Models\SetLeagueEnabledResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/settings/enabled
*/
class EnabledRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new EnabledRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/settings/enabled');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Enables or disables a league. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param SetLeagueEnabledRequestBody $body League enabled-state update.
     * @param EnabledRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<SetLeagueEnabledResponse|null>
     * @throws Exception
    */
    public function post(SetLeagueEnabledRequestBody $body, ?EnabledRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [SetLeagueEnabledResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Enables or disables a league. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param SetLeagueEnabledRequestBody $body League enabled-state update.
     * @param EnabledRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(SetLeagueEnabledRequestBody $body, ?EnabledRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return EnabledRequestBuilder
    */
    public function withUrl(string $rawUrl): EnabledRequestBuilder {
        return new EnabledRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
