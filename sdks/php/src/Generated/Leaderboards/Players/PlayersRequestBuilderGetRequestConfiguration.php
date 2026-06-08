<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Players;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;
use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class PlayersRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var PlayersRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?PlayersRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new PlayersRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param PlayersRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?PlayersRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new PlayersRequestBuilderGetQueryParameters.
     * @param int|null $limit 
     * @param LeaderboardSortBy|null $sortBy 
     * @return PlayersRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?int $limit = null, ?LeaderboardSortBy $sortBy = null): PlayersRequestBuilderGetQueryParameters {
        return new PlayersRequestBuilderGetQueryParameters($limit, $sortBy);
    }

}
