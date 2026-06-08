<?php

namespace TeamBattles\Sdk\Generated\Orgs\Item\Stats;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiOrganizationStats;

/**
 * Envelope containing stats plus a response timestamp.
*/
class StatsGetResponse implements Parsable 
{
    /**
     * @var ApiOrganizationStats|null $stats API-safe organization aggregate stats.
    */
    private ?ApiOrganizationStats $stats = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return StatsGetResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): StatsGetResponse {
        return new StatsGetResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'stats' => fn(ParseNode $n) => $o->setStats($n->getObjectValue([ApiOrganizationStats::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the stats property value. API-safe organization aggregate stats.
     * @return ApiOrganizationStats|null
    */
    public function getStats(): ?ApiOrganizationStats {
        return $this->stats;
    }

    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
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
     * Sets the stats property value. API-safe organization aggregate stats.
     * @param ApiOrganizationStats|null $value Value to set for the stats property.
    */
    public function setStats(?ApiOrganizationStats $value): void {
        $this->stats = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
