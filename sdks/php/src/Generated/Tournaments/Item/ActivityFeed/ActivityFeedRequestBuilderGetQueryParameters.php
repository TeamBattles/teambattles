<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\ActivityFeed;

/**
 * Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
*/
class ActivityFeedRequestBuilderGetQueryParameters 
{
    /**
     * @var int|null $limit Maximum entries to return, 1-100. Defaults to 50.
    */
    public ?int $limit = null;
    
    /**
     * Instantiates a new ActivityFeedRequestBuilderGetQueryParameters and sets the default values.
     * @param int|null $limit Maximum entries to return, 1-100. Defaults to 50.
    */
    public function __construct(?int $limit = null) {
        $this->limit = $limit;
    }

}
