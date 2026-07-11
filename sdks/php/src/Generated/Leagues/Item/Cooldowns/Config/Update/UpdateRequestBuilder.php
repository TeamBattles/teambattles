<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Cooldowns\Config\Update;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\UpdateLeagueCooldownConfigRequestBody;
use TeamBattles\Sdk\Generated\Models\UpdateLeagueCooldownConfigResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/config/update
*/
class UpdateRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new UpdateRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/cooldowns/config/update');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Updates the league member cooldown configuration. Requires a personal or developer API key whose owner is currently a league ADMIN of the league in the path, with the league rules capability enabled on the key (league-wide cooldown policy is a config-admin write, deliberately separated from the per-member cooldowns capability). League API access is gated at api_pro on the league owner's plan.
     * @param UpdateLeagueCooldownConfigRequestBody $body Updates league member cooldown configuration.
     * @param UpdateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<UpdateLeagueCooldownConfigResponse|null>
     * @throws Exception
    */
    public function post(UpdateLeagueCooldownConfigRequestBody $body, ?UpdateRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [UpdateLeagueCooldownConfigResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Updates the league member cooldown configuration. Requires a personal or developer API key whose owner is currently a league ADMIN of the league in the path, with the league rules capability enabled on the key (league-wide cooldown policy is a config-admin write, deliberately separated from the per-member cooldowns capability). League API access is gated at api_pro on the league owner's plan.
     * @param UpdateLeagueCooldownConfigRequestBody $body Updates league member cooldown configuration.
     * @param UpdateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(UpdateLeagueCooldownConfigRequestBody $body, ?UpdateRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return UpdateRequestBuilder
    */
    public function withUrl(string $rawUrl): UpdateRequestBuilder {
        return new UpdateRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
