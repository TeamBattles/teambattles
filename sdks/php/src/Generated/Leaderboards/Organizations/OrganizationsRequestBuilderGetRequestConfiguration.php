<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Organizations;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;
use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class OrganizationsRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var OrganizationsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?OrganizationsRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new OrganizationsRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param OrganizationsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?OrganizationsRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new OrganizationsRequestBuilderGetQueryParameters.
     * @param string|null $gameSlug 
     * @param int|null $limit 
     * @param LeaderboardSortBy|null $sortBy 
     * @return OrganizationsRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $gameSlug = null, ?int $limit = null, ?LeaderboardSortBy $sortBy = null): OrganizationsRequestBuilderGetQueryParameters {
        return new OrganizationsRequestBuilderGetQueryParameters($gameSlug, $limit, $sortBy);
    }

}
