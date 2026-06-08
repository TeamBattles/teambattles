<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class DeliveriesRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var DeliveriesRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?DeliveriesRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new DeliveriesRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param DeliveriesRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?DeliveriesRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new DeliveriesRequestBuilderGetQueryParameters.
     * @param string|null $cursor Opaque continuation cursor from a prior page's continueCursor.
     * @param string|null $limit Page size 1-100 (default 25), enforced by the handler.
     * @return DeliveriesRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $cursor = null, ?string $limit = null): DeliveriesRequestBuilderGetQueryParameters {
        return new DeliveriesRequestBuilderGetQueryParameters($cursor, $limit);
    }

}
