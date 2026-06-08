<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Players\Me\Rank;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns the API key owner's rank in the global player leaderboard. gameSlug is not supported. Requires users.profile:read.
*/
class RankRequestBuilderGetQueryParameters 
{
    /**
     * @var LeaderboardSortBy|null $sortBy 
    */
    public ?LeaderboardSortBy $sortBy = null;
    
    /**
     * Instantiates a new RankRequestBuilderGetQueryParameters and sets the default values.
     * @param LeaderboardSortBy|null $sortBy 
    */
    public function __construct(?LeaderboardSortBy $sortBy = null) {
        $this->sortBy = $sortBy;
    }

}
