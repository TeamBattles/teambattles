<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\ActivityFeed;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class ActivityFeedRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var ActivityFeedRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?ActivityFeedRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new ActivityFeedRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param ActivityFeedRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?ActivityFeedRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new ActivityFeedRequestBuilderGetQueryParameters.
     * @param int|null $limit Maximum entries to return, 1-100. Defaults to 50.
     * @return ActivityFeedRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?int $limit = null): ActivityFeedRequestBuilderGetQueryParameters {
        return new ActivityFeedRequestBuilderGetQueryParameters($limit);
    }

}
