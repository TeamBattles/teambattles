<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The tournament free-agent pool.
*/
class TournamentFreeAgentsResponse implements Parsable 
{
    /**
     * @var int|null $count Number of free agents returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<TournamentFreeAgent>|null $freeAgents Free agents currently AVAILABLE in the pool.
    */
    private ?array $freeAgents = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentFreeAgentsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentFreeAgentsResponse {
        return new TournamentFreeAgentsResponse();
    }

    /**
     * Gets the count property value. Number of free agents returned.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'freeAgents' => fn(ParseNode $n) => $o->setFreeAgents($n->getCollectionOfObjectValues([TournamentFreeAgent::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the freeAgents property value. Free agents currently AVAILABLE in the pool.
     * @return array<TournamentFreeAgent>|null
    */
    public function getFreeAgents(): ?array {
        return $this->freeAgents;
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('freeAgents', $this->getFreeAgents());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of free agents returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the freeAgents property value. Free agents currently AVAILABLE in the pool.
     * @param array<TournamentFreeAgent>|null $value Value to set for the freeAgents property.
    */
    public function setFreeAgents(?array $value): void {
        $this->freeAgents = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
