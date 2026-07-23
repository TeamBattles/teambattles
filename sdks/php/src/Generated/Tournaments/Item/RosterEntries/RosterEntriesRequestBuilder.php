<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\RosterEntries;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Tournaments\Item\RosterEntries\Item\WithRosterEntryItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/roster-entries
*/
class RosterEntriesRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.rosterEntries.item collection
     * @param string $rosterEntryId Tournament roster entry ID.
     * @return WithRosterEntryItemRequestBuilder
    */
    public function byRosterEntryId(string $rosterEntryId): WithRosterEntryItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['rosterEntryId'] = $rosterEntryId;
        return new WithRosterEntryItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new RosterEntriesRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/roster-entries');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
