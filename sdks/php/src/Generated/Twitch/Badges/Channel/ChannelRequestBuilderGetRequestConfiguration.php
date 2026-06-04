<?php

namespace TeamBattles\Sdk\Generated\Twitch\Badges\Channel;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class ChannelRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var ChannelRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?ChannelRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new ChannelRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param ChannelRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?ChannelRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new ChannelRequestBuilderGetQueryParameters.
     * @param string|null $id Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
     * @param string|null $username Channel login name (e.g. ninja). Provide exactly one of username or id.
     * @return ChannelRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $id = null, ?string $username = null): ChannelRequestBuilderGetQueryParameters {
        return new ChannelRequestBuilderGetQueryParameters($id, $username);
    }

}
