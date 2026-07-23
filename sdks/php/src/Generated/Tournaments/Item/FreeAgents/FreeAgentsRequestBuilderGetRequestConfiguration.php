<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class FreeAgentsRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var FreeAgentsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?FreeAgentsRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new FreeAgentsRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param FreeAgentsRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?FreeAgentsRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new FreeAgentsRequestBuilderGetQueryParameters.
     * @param string|null $viewerParticipantId Participant ID whose open offers should be reflected in `viewerOfferStatus`. The caller must lead that participant's team and the participant must belong to this tournament, otherwise the field is null for every agent.
     * @return FreeAgentsRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $viewerParticipantId = null): FreeAgentsRequestBuilderGetQueryParameters {
        return new FreeAgentsRequestBuilderGetQueryParameters($viewerParticipantId);
    }

}
