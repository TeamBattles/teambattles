<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Aggregate league admin dashboard statistics.
*/
class LeagueDashboardStatsResponse implements Parsable 
{
    /**
     * @var LeagueDashboardStatsResponse_stats|null $stats The stats property
    */
    private ?LeagueDashboardStatsResponse_stats $stats = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueDashboardStatsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueDashboardStatsResponse {
        return new LeagueDashboardStatsResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'stats' => fn(ParseNode $n) => $o->setStats($n->getObjectValue([LeagueDashboardStatsResponse_stats::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the stats property value. The stats property
     * @return LeagueDashboardStatsResponse_stats|null
    */
    public function getStats(): ?LeagueDashboardStatsResponse_stats {
        return $this->stats;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('stats', $this->getStats());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the stats property value. The stats property
     * @param LeagueDashboardStatsResponse_stats|null $value Value to set for the stats property.
    */
    public function setStats(?LeagueDashboardStatsResponse_stats $value): void {
        $this->stats = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
