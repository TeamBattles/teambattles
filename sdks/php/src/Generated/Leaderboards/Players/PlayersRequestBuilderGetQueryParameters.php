<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Players;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
*/
class PlayersRequestBuilderGetQueryParameters 
{
    /**
     * @var int|null $limit 
    */
    public ?int $limit = null;
    
    /**
     * @var LeaderboardSortBy|null $sortBy 
    */
    public ?LeaderboardSortBy $sortBy = null;
    
    /**
     * Instantiates a new PlayersRequestBuilderGetQueryParameters and sets the default values.
     * @param int|null $limit 
     * @param LeaderboardSortBy|null $sortBy 
    */
    public function __construct(?int $limit = null, ?LeaderboardSortBy $sortBy = null) {
        $this->limit = $limit;
        $this->sortBy = $sortBy;
    }

}
