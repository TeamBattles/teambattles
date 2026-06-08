<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of deleting a game rank.
*/
class GameRankDeleteResponse implements Parsable 
{
    /**
     * @var bool|null $deleted True when a rank was removed; false when none existed (no-op).
    */
    private ?bool $deleted = null;
    
    /**
     * @var string|null $timestamp ISO 8601 response timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameRankDeleteResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameRankDeleteResponse {
        return new GameRankDeleteResponse();
    }

    /**
     * Gets the deleted property value. True when a rank was removed; false when none existed (no-op).
     * @return bool|null
    */
    public function getDeleted(): ?bool {
        return $this->deleted;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'deleted' => fn(ParseNode $n) => $o->setDeleted($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. ISO 8601 response timestamp.
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
        $writer->writeBooleanValue('deleted', $this->getDeleted());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the deleted property value. True when a rank was removed; false when none existed (no-op).
     * @param bool|null $value Value to set for the deleted property.
    */
    public function setDeleted(?bool $value): void {
        $this->deleted = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 response timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
