<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Players\Me\Rank;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns the API key owner's own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
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
