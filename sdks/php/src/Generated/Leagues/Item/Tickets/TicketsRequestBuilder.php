<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Tickets;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Create\CreateRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\Item\Tickets\Item\WithTicketItemRequestBuilder;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets
*/
class TicketsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The create property
    */
    public function create(): CreateRequestBuilder {
        return new CreateRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.leagues.item.tickets.item collection
     * @param string $ticketId League ticket ID.
     * @return WithTicketItemRequestBuilder
    */
    public function byTicketId(string $ticketId): WithTicketItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['ticketId'] = $ticketId;
        return new WithTicketItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new TicketsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/tickets');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
