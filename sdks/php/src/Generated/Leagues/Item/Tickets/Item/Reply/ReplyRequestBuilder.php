<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Item\Reply;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\ReplyLeagueTicketRequestBody;
use TeamBattles\Sdk\Generated\Models\ReplyLeagueTicketResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}/reply
*/
class ReplyRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new ReplyRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/tickets/{ticketId}/reply');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Adds a reply or internal note to a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param ReplyLeagueTicketRequestBody $body Adds a reply or internal note to a league support ticket.
     * @param ReplyRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ReplyLeagueTicketResponse|null>
     * @throws Exception
    */
    public function post(ReplyLeagueTicketRequestBody $body, ?ReplyRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ReplyLeagueTicketResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Adds a reply or internal note to a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param ReplyLeagueTicketRequestBody $body Adds a reply or internal note to a league support ticket.
     * @param ReplyRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(ReplyLeagueTicketRequestBody $body, ?ReplyRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return ReplyRequestBuilder
    */
    public function withUrl(string $rawUrl): ReplyRequestBuilder {
        return new ReplyRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
