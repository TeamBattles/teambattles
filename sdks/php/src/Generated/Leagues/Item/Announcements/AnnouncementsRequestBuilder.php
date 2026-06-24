<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Announcements;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\AnnounceLeagueRequestBody;
use TeamBattles\Sdk\Generated\Models\AnnounceLeagueResponse;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/announcements
*/
class AnnouncementsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new AnnouncementsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/announcements');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Sends an announcement to all members of the league. Requires a league-operator key bound to the league and the league announcements capability.
     * @param AnnounceLeagueRequestBody $body Sends an announcement to all members of the league.
     * @param AnnouncementsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<AnnounceLeagueResponse|null>
     * @throws Exception
    */
    public function post(AnnounceLeagueRequestBody $body, ?AnnouncementsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [AnnounceLeagueResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Sends an announcement to all members of the league. Requires a league-operator key bound to the league and the league announcements capability.
     * @param AnnounceLeagueRequestBody $body Sends an announcement to all members of the league.
     * @param AnnouncementsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(AnnounceLeagueRequestBody $body, ?AnnouncementsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return AnnouncementsRequestBuilder
    */
    public function withUrl(string $rawUrl): AnnouncementsRequestBuilder {
        return new AnnouncementsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
