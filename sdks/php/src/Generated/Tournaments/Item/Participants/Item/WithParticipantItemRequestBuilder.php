<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\CheckIn\CheckInRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Disqualify\DisqualifyRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Remove\RemoveRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Roster\RosterRequestBuilder;
use TeamBattles\Sdk\Generated\Tournaments\Item\Participants\Item\Withdraw\WithdrawRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}
*/
class WithParticipantItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The checkIn property
    */
    public function checkIn(): CheckInRequestBuilder {
        return new CheckInRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The disqualify property
    */
    public function disqualify(): DisqualifyRequestBuilder {
        return new DisqualifyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The remove property
    */
    public function remove(): RemoveRequestBuilder {
        return new RemoveRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The roster property
    */
    public function roster(): RosterRequestBuilder {
        return new RosterRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The withdraw property
    */
    public function withdraw(): WithdrawRequestBuilder {
        return new WithdrawRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithParticipantItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/participants/{participantId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
