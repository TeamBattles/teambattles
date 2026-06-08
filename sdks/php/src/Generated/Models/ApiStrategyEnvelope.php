<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Strategy plus a response timestamp.
*/
class ApiStrategyEnvelope implements Parsable 
{
    /**
     * @var ApiStrategy|null $strategy API-safe shareable strategy.
    */
    private ?ApiStrategy $strategy = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategyEnvelope
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategyEnvelope {
        return new ApiStrategyEnvelope();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'strategy' => fn(ParseNode $n) => $o->setStrategy($n->getObjectValue([ApiStrategy::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the strategy property value. API-safe shareable strategy.
     * @return ApiStrategy|null
    */
    public function getStrategy(): ?ApiStrategy {
        return $this->strategy;
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
        $writer->writeObjectValue('strategy', $this->getStrategy());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the strategy property value. API-safe shareable strategy.
     * @param ApiStrategy|null $value Value to set for the strategy property.
    */
    public function setStrategy(?ApiStrategy $value): void {
        $this->strategy = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
