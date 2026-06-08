<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Chat;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class ChatRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var ChatRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?ChatRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new ChatRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param ChatRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?ChatRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new ChatRequestBuilderGetQueryParameters.
     * @param string|null $cursor Opaque continuation cursor from a prior page's nextCursor.
     * @param string|null $limit Page size (1-100). Defaults to 50.
     * @return ChatRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $cursor = null, ?string $limit = null): ChatRequestBuilderGetQueryParameters {
        return new ChatRequestBuilderGetQueryParameters($cursor, $limit);
    }

}
