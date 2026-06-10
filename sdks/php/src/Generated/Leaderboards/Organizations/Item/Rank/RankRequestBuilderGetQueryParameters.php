<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Organizations\Item\Rank;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns an organization's 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game's stats only; omit it for the global all-games rank. Organization stats are aggregated from the org's active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
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
