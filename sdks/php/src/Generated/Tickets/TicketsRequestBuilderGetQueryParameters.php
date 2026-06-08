<?php

namespace TeamBattles\Sdk\Generated\Tickets;

/**
 * Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
*/
class TicketsRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $cursor Opaque continuation cursor from a prior page's nextCursor.
    */
    public ?string $cursor = null;
    
    /**
     * @var string|null $limit Page size (1-100). Defaults to 25.
    */
    public ?string $limit = null;
    
    /**
     * Instantiates a new TicketsRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $cursor Opaque continuation cursor from a prior page's nextCursor.
     * @param string|null $limit Page size (1-100). Defaults to 25.
    */
    public function __construct(?string $cursor = null, ?string $limit = null) {
        $this->cursor = $cursor;
        $this->limit = $limit;
    }

}
