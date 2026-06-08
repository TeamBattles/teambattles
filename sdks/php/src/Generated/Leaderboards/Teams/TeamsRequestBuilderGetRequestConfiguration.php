<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Teams;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;
use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class TeamsRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var TeamsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?TeamsRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new TeamsRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param TeamsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?TeamsRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new TeamsRequestBuilderGetQueryParameters.
     * @param string|null $gameSlug 
     * @param int|null $limit 
     * @param LeaderboardSortBy|null $sortBy 
     * @return TeamsRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $gameSlug = null, ?int $limit = null, ?LeaderboardSortBy $sortBy = null): TeamsRequestBuilderGetQueryParameters {
        return new TeamsRequestBuilderGetQueryParameters($gameSlug, $limit, $sortBy);
    }

}
