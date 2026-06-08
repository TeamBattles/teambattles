<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Item\Escalate;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\EscalateLeagueTicketRequestBody;
use TeamBattles\Sdk\Generated\Models\EscalateLeagueTicketResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}/escalate
*/
class EscalateRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new EscalateRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/tickets/{ticketId}/escalate');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Escalates a league-scoped support ticket to TeamBattles staff. Requires a league-operator key bound to the league and the league tickets capability.
     * @param EscalateLeagueTicketRequestBody $body Escalates a league support ticket to TeamBattles staff.
     * @param EscalateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<EscalateLeagueTicketResponse|null>
     * @throws Exception
    */
    public function post(EscalateLeagueTicketRequestBody $body, ?EscalateRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
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
        return $this->requestAdapter->sendAsync($requestInfo, [EscalateLeagueTicketResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Escalates a league-scoped support ticket to TeamBattles staff. Requires a league-operator key bound to the league and the league tickets capability.
     * @param EscalateLeagueTicketRequestBody $body Escalates a league support ticket to TeamBattles staff.
     * @param EscalateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(EscalateLeagueTicketRequestBody $body, ?EscalateRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return EscalateRequestBuilder
    */
    public function withUrl(string $rawUrl): EscalateRequestBuilder {
        return new EscalateRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
