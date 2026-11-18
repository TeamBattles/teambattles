<?php

namespace TeamBattles\Sdk\Generated\Twitch\Streams\History;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class HistoryRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var HistoryRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?HistoryRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new HistoryRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param HistoryRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?HistoryRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new HistoryRequestBuilderGetQueryParameters.
     * @param string|null $id Twitch user id (e.g. 71092938). Provide exactly one of username or id.
     * @param string|null $username Channel login (e.g. xqc). Provide exactly one of username or id.
     * @return HistoryRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $id = null, ?string $username = null): HistoryRequestBuilderGetQueryParameters {
        return new HistoryRequestBuilderGetQueryParameters($id, $username);
    }

}
