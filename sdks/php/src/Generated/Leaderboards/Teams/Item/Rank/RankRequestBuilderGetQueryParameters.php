<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Teams\Item\Rank;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Resolves a single team by slug or ID and returns its 1-indexed rank on the public team leaderboard. `sortBy` selects the ranking field: wins (default), winRate, or experience. Pass `gameSlug` to rank within one game's leaderboard; omit it for the global (all-games) board. An unknown `gameSlug` returns 404. `rank` is null when the team is excluded from the leaderboard (private or disabled) and also when the team ranks beyond the internal scan window, since the rank is a bounded best-effort computation rather than a full-table sort. A missing or inactive team returns 404; an active but excluded team returns 200 with rank null. Requires teams.profile:read.
*/
class RankRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $gameSlug 
    */
    public ?string $gameSlug = null;
    
    /**
     * @var LeaderboardSortBy|null $sortBy 
    */
    public ?LeaderboardSortBy $sortBy = null;
    
    /**
     * Instantiates a new RankRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $gameSlug 
     * @param LeaderboardSortBy|null $sortBy 
    */
    public function __construct(?string $gameSlug = null, ?LeaderboardSortBy $sortBy = null) {
        $this->gameSlug = $gameSlug;
        $this->sortBy = $sortBy;
    }

}
