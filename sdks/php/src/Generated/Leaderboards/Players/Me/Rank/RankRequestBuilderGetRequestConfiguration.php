<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Players\Me\Rank;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;
use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class RankRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var RankRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?RankRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new RankRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param RankRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?RankRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new RankRequestBuilderGetQueryParameters.
     * @param LeaderboardSortBy|null $sortBy 
     * @return RankRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?LeaderboardSortBy $sortBy = null): RankRequestBuilderGetQueryParameters {
        return new RankRequestBuilderGetQueryParameters($sortBy);
    }

}
