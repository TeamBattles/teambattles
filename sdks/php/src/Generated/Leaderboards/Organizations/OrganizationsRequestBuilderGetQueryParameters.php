<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Organizations;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
*/
class OrganizationsRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $gameSlug 
    */
    public ?string $gameSlug = null;
    
    /**
     * @var int|null $limit 
    */
    public ?int $limit = null;
    
    /**
     * @var LeaderboardSortBy|null $sortBy 
    */
    public ?LeaderboardSortBy $sortBy = null;
    
    /**
     * Instantiates a new OrganizationsRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $gameSlug 
     * @param int|null $limit 
     * @param LeaderboardSortBy|null $sortBy 
    */
    public function __construct(?string $gameSlug = null, ?int $limit = null, ?LeaderboardSortBy $sortBy = null) {
        $this->gameSlug = $gameSlug;
        $this->limit = $limit;
        $this->sortBy = $sortBy;
    }

}
