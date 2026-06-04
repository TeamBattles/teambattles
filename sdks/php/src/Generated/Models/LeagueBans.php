<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Team bans for a league.
*/
class LeagueBans implements Parsable 
{
    /**
     * @var array<LeagueBans_bans>|null $bans Enriched team ban records with computed status.
    */
    private ?array $bans = null;
    
    /**
     * @var int|null $count Number of bans returned.
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueBans
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueBans {
        return new LeagueBans();
    }

    /**
     * Gets the bans property value. Enriched team ban records with computed status.
     * @return array<LeagueBans_bans>|null
    */
    public function getBans(): ?array {
        return $this->bans;
    }

    /**
     * Gets the count property value. Number of bans returned.
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
            'bans' => fn(ParseNode $n) => $o->setBans($n->getCollectionOfObjectValues([LeagueBans_bans::class, 'createFromDiscriminatorValue'])),
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
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
        $writer->writeCollectionOfObjectValues('bans', $this->getBans());
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the bans property value. Enriched team ban records with computed status.
     * @param array<LeagueBans_bans>|null $value Value to set for the bans property.
    */
    public function setBans(?array $value): void {
        $this->bans = $value;
    }

    /**
     * Sets the count property value. Number of bans returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
