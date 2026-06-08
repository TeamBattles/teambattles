<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class CreatePenaltyResponse implements Parsable 
{
    /**
     * @var string|null $penaltyId Created league penalty ID.
    */
    private ?string $penaltyId = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreatePenaltyResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreatePenaltyResponse {
        return new CreatePenaltyResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'penaltyId' => fn(ParseNode $n) => $o->setPenaltyId($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the penaltyId property value. Created league penalty ID.
     * @return string|null
    */
    public function getPenaltyId(): ?string {
        return $this->penaltyId;
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
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
        $writer->writeStringValue('penaltyId', $this->getPenaltyId());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the penaltyId property value. Created league penalty ID.
     * @param string|null $value Value to set for the penaltyId property.
    */
    public function setPenaltyId(?string $value): void {
        $this->penaltyId = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
