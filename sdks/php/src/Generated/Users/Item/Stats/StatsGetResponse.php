<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Stats;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiUserStats;

/**
 * Envelope containing stats plus a response timestamp.
*/
class StatsGetResponse implements Parsable 
{
    /**
     * @var ApiUserStats|null $stats API-safe aggregate user stats.
    */
    private ?ApiUserStats $stats = null;
    
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
            'stats' => fn(ParseNode $n) => $o->setStats($n->getObjectValue([ApiUserStats::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the stats property value. API-safe aggregate user stats.
     * @return ApiUserStats|null
    */
    public function getStats(): ?ApiUserStats {
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
     * Sets the stats property value. API-safe aggregate user stats.
     * @param ApiUserStats|null $value Value to set for the stats property.
    */
    public function setStats(?ApiUserStats $value): void {
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
