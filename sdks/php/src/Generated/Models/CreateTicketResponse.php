<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class CreateTicketResponse implements Parsable 
{
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $ticketId Created ticket ID.
    */
    private ?string $ticketId = null;
    
    /**
     * @var int|null $ticketNumber Human-facing sequential ticket number.
    */
    private ?int $ticketNumber = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreateTicketResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreateTicketResponse {
        return new CreateTicketResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'ticketId' => fn(ParseNode $n) => $o->setTicketId($n->getStringValue()),
            'ticketNumber' => fn(ParseNode $n) => $o->setTicketNumber($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
    }

    /**
     * Gets the ticketId property value. Created ticket ID.
     * @return string|null
    */
    public function getTicketId(): ?string {
        return $this->ticketId;
    }

    /**
     * Gets the ticketNumber property value. Human-facing sequential ticket number.
     * @return int|null
    */
    public function getTicketNumber(): ?int {
        return $this->ticketNumber;
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
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('ticketId', $this->getTicketId());
        $writer->writeIntegerValue('ticketNumber', $this->getTicketNumber());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the ticketId property value. Created ticket ID.
     * @param string|null $value Value to set for the ticketId property.
    */
    public function setTicketId(?string $value): void {
        $this->ticketId = $value;
    }

    /**
     * Sets the ticketNumber property value. Human-facing sequential ticket number.
     * @param int|null $value Value to set for the ticketNumber property.
    */
    public function setTicketNumber(?int $value): void {
        $this->ticketNumber = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
