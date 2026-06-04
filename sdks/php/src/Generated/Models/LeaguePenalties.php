<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Penalties and cooldowns for a league.
*/
class LeaguePenalties implements Parsable 
{
    /**
     * @var array<LeaguePenalties_cooldowns>|null $cooldowns Enriched member cooldown records (empty when type is penalties).
    */
    private ?array $cooldowns = null;
    
    /**
     * @var int|null $count Combined number of penalties and cooldowns returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<LeaguePenalties_penalties>|null $penalties Enriched penalty records (empty when type is cooldowns).
    */
    private ?array $penalties = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeaguePenalties
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeaguePenalties {
        return new LeaguePenalties();
    }

    /**
     * Gets the cooldowns property value. Enriched member cooldown records (empty when type is penalties).
     * @return array<LeaguePenalties_cooldowns>|null
    */
    public function getCooldowns(): ?array {
        return $this->cooldowns;
    }

    /**
     * Gets the count property value. Combined number of penalties and cooldowns returned.
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
            'cooldowns' => fn(ParseNode $n) => $o->setCooldowns($n->getCollectionOfObjectValues([LeaguePenalties_cooldowns::class, 'createFromDiscriminatorValue'])),
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'penalties' => fn(ParseNode $n) => $o->setPenalties($n->getCollectionOfObjectValues([LeaguePenalties_penalties::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the penalties property value. Enriched penalty records (empty when type is cooldowns).
     * @return array<LeaguePenalties_penalties>|null
    */
    public function getPenalties(): ?array {
        return $this->penalties;
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
        $writer->writeCollectionOfObjectValues('cooldowns', $this->getCooldowns());
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('penalties', $this->getPenalties());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the cooldowns property value. Enriched member cooldown records (empty when type is penalties).
     * @param array<LeaguePenalties_cooldowns>|null $value Value to set for the cooldowns property.
    */
    public function setCooldowns(?array $value): void {
        $this->cooldowns = $value;
    }

    /**
     * Sets the count property value. Combined number of penalties and cooldowns returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the penalties property value. Enriched penalty records (empty when type is cooldowns).
     * @param array<LeaguePenalties_penalties>|null $value Value to set for the penalties property.
    */
    public function setPenalties(?array $value): void {
        $this->penalties = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
