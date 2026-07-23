<?php

namespace TeamBattles\Sdk\Generated\User\Tournaments\Calendar;

/**
 * Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner's teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
*/
class CalendarRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $rangeEnd Window end, ISO 8601. Defaults to 30 days after `rangeStart`.
    */
    public ?string $rangeEnd = null;
    
    /**
     * @var string|null $rangeStart Window start, ISO 8601. Defaults to the time of the request.
    */
    public ?string $rangeStart = null;
    
    /**
     * Instantiates a new CalendarRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $rangeEnd Window end, ISO 8601. Defaults to 30 days after `rangeStart`.
     * @param string|null $rangeStart Window start, ISO 8601. Defaults to the time of the request.
    */
    public function __construct(?string $rangeEnd = null, ?string $rangeStart = null) {
        $this->rangeEnd = $rangeEnd;
        $this->rangeStart = $rangeStart;
    }

}
