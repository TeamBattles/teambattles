<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Chat;

/**
 * Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
*/
class ChatRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $cursor Opaque continuation cursor from a prior page's nextCursor.
    */
    public ?string $cursor = null;
    
    /**
     * @var string|null $limit Page size (1-100). Defaults to 50.
    */
    public ?string $limit = null;
    
    /**
     * Instantiates a new ChatRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $cursor Opaque continuation cursor from a prior page's nextCursor.
     * @param string|null $limit Page size (1-100). Defaults to 50.
    */
    public function __construct(?string $cursor = null, ?string $limit = null) {
        $this->cursor = $cursor;
        $this->limit = $limit;
    }

}
