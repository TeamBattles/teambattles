<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Teams;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns active, non-disabled, non-private teams ranked by the requested stat. Requires teams.profile:read.
*/
class TeamsRequestBuilderGetQueryParameters 
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
     * Instantiates a new TeamsRequestBuilderGetQueryParameters and sets the default values.
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
