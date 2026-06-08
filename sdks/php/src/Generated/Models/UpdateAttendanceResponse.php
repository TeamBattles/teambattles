<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class UpdateAttendanceResponse implements Parsable 
{
    /**
     * @var string|null $message The message property
    */
    private ?string $message = null;
    
    /**
     * @var bool|null $reclaimedSpot The reclaimedSpot property
    */
    private ?bool $reclaimedSpot = null;
    
    /**
     * @var string|null $replacedBy The replacedBy property
    */
    private ?string $replacedBy = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateAttendanceResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateAttendanceResponse {
        return new UpdateAttendanceResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'message' => fn(ParseNode $n) => $o->setMessage($n->getStringValue()),
            'reclaimedSpot' => fn(ParseNode $n) => $o->setReclaimedSpot($n->getBooleanValue()),
            'replacedBy' => fn(ParseNode $n) => $o->setReplacedBy($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the message property value. The message property
     * @return string|null
    */
    public function getMessage(): ?string {
        return $this->message;
    }

    /**
     * Gets the reclaimedSpot property value. The reclaimedSpot property
     * @return bool|null
    */
    public function getReclaimedSpot(): ?bool {
        return $this->reclaimedSpot;
    }

    /**
     * Gets the replacedBy property value. The replacedBy property
     * @return string|null
    */
    public function getReplacedBy(): ?string {
        return $this->replacedBy;
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
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
        $writer->writeStringValue('message', $this->getMessage());
        $writer->writeBooleanValue('reclaimedSpot', $this->getReclaimedSpot());
        $writer->writeStringValue('replacedBy', $this->getReplacedBy());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the message property value. The message property
     * @param string|null $value Value to set for the message property.
    */
    public function setMessage(?string $value): void {
        $this->message = $value;
    }

    /**
     * Sets the reclaimedSpot property value. The reclaimedSpot property
     * @param bool|null $value Value to set for the reclaimedSpot property.
    */
    public function setReclaimedSpot(?bool $value): void {
        $this->reclaimedSpot = $value;
    }

    /**
     * Sets the replacedBy property value. The replacedBy property
     * @param string|null $value Value to set for the replacedBy property.
    */
    public function setReplacedBy(?string $value): void {
        $this->replacedBy = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
