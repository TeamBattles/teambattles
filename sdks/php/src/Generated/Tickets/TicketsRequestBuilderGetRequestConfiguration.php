<?php

namespace TeamBattles\Sdk\Generated\Tickets;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class TicketsRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var TicketsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?TicketsRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new TicketsRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param TicketsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?TicketsRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new TicketsRequestBuilderGetQueryParameters.
     * @param string|null $cursor Opaque continuation cursor from a prior page's nextCursor.
     * @param string|null $limit Page size (1-100). Defaults to 25.
     * @return TicketsRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $cursor = null, ?string $limit = null): TicketsRequestBuilderGetQueryParameters {
        return new TicketsRequestBuilderGetQueryParameters($cursor, $limit);
    }

}
