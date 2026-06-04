<?php

namespace TeamBattles\Sdk\Generated\Twitch\Badges\Channel;

/**
 * Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
*/
class ChannelRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $id Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
    */
    public ?string $id = null;
    
    /**
     * @var string|null $username Channel login name (e.g. ninja). Provide exactly one of username or id.
    */
    public ?string $username = null;
    
    /**
     * Instantiates a new ChannelRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $id Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
     * @param string|null $username Channel login name (e.g. ninja). Provide exactly one of username or id.
    */
    public function __construct(?string $id = null, ?string $username = null) {
        $this->id = $id;
        $this->username = $username;
    }

}
