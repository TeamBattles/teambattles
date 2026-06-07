<?php

namespace TeamBattles\Sdk\Generated\Leaderboards\Teams\Item\Rank;

use TeamBattles\Sdk\Generated\Models\LeaderboardSortBy;

/**
 * Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
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
