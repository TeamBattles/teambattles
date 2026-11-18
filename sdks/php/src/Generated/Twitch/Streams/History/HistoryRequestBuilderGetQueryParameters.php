<?php

namespace TeamBattles\Sdk\Generated\Twitch\Streams\History;

/**
 * Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
*/
class HistoryRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $id Twitch user id (e.g. 71092938). Provide exactly one of username or id.
    */
    public ?string $id = null;
    
    /**
     * @var string|null $username Channel login (e.g. xqc). Provide exactly one of username or id.
    */
    public ?string $username = null;
    
    /**
     * Instantiates a new HistoryRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $id Twitch user id (e.g. 71092938). Provide exactly one of username or id.
     * @param string|null $username Channel login (e.g. xqc). Provide exactly one of username or id.
    */
    public function __construct(?string $id = null, ?string $username = null) {
        $this->id = $id;
        $this->username = $username;
    }

}
