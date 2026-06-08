<?php

namespace TeamBattles\Sdk\Generated\Orgs\Discover;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class DiscoverRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var DiscoverRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?DiscoverRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new DiscoverRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param DiscoverRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?DiscoverRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new DiscoverRequestBuilderGetQueryParameters.
     * @param int|null $limit 
     * @param string|null $search Optional organization name search.
     * @return DiscoverRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?int $limit = null, ?string $search = null): DiscoverRequestBuilderGetQueryParameters {
        return new DiscoverRequestBuilderGetQueryParameters($limit, $search);
    }

}
