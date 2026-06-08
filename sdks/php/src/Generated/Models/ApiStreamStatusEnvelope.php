<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Stream status plus a response timestamp.
*/
class ApiStreamStatusEnvelope implements Parsable 
{
    /**
     * @var ApiStreamStatus|null $stream API-safe live-stream status for a user.
    */
    private ?ApiStreamStatus $stream = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStreamStatusEnvelope
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStreamStatusEnvelope {
        return new ApiStreamStatusEnvelope();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'stream' => fn(ParseNode $n) => $o->setStream($n->getObjectValue([ApiStreamStatus::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the stream property value. API-safe live-stream status for a user.
     * @return ApiStreamStatus|null
    */
    public function getStream(): ?ApiStreamStatus {
        return $this->stream;
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
        $writer->writeObjectValue('stream', $this->getStream());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the stream property value. API-safe live-stream status for a user.
     * @param ApiStreamStatus|null $value Value to set for the stream property.
    */
    public function setStream(?ApiStreamStatus $value): void {
        $this->stream = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
