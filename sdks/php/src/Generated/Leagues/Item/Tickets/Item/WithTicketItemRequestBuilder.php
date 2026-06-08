<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Item\Escalate\EscalateRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Item\Reply\ReplyRequestBuilder;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\UpdateLeagueTicketRequestBody;
use TeamBattles\Sdk\Generated\Models\UpdateLeagueTicketResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}
*/
class WithTicketItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The escalate property
    */
    public function escalate(): EscalateRequestBuilder {
        return new EscalateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The reply property
    */
    public function reply(): ReplyRequestBuilder {
        return new ReplyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithTicketItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/tickets/{ticketId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param UpdateLeagueTicketRequestBody $body Updates league ticket status, priority, or assignment.
     * @param WithTicketItemRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<UpdateLeagueTicketResponse|null>
     * @throws Exception
    */
    public function patch(UpdateLeagueTicketRequestBody $body, ?WithTicketItemRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [UpdateLeagueTicketResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param UpdateLeagueTicketRequestBody $body Updates league ticket status, priority, or assignment.
     * @param WithTicketItemRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(UpdateLeagueTicketRequestBody $body, ?WithTicketItemRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::PATCH;
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
     * @return WithTicketItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithTicketItemRequestBuilder {
        return new WithTicketItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
