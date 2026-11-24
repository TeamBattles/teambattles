<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class TicketSummary implements Parsable 
{
    /**
     * @var string|null $category The category property
    */
    private ?string $category = null;
    
    /**
     * @var string|null $createdAt The createdAt property
    */
    private ?string $createdAt = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var TicketSummary_priority|null $priority The priority property
    */
    private ?TicketSummary_priority $priority = null;
    
    /**
     * @var TicketSummary_status|null $status The status property
    */
    private ?TicketSummary_status $status = null;
    
    /**
     * @var string|null $subject The subject property
    */
    private ?string $subject = null;
    
    /**
     * @var int|null $ticketNumber The ticketNumber property
    */
    private ?int $ticketNumber = null;
    
    /**
     * @var string|null $updatedAt The updatedAt property
    */
    private ?string $updatedAt = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketSummary
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketSummary {
        return new TicketSummary();
    }

    /**
     * Gets the category property value. The category property
     * @return string|null
    */
    public function getCategory(): ?string {
        return $this->category;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return string|null
    */
    public function getCreatedAt(): ?string {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'category' => fn(ParseNode $n) => $o->setCategory($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'priority' => fn(ParseNode $n) => $o->setPriority($n->getEnumValue(TicketSummary_priority::class)),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TicketSummary_status::class)),
            'subject' => fn(ParseNode $n) => $o->setSubject($n->getStringValue()),
            'ticketNumber' => fn(ParseNode $n) => $o->setTicketNumber($n->getIntegerValue()),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. The id property
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the priority property value. The priority property
     * @return TicketSummary_priority|null
    */
    public function getPriority(): ?TicketSummary_priority {
        return $this->priority;
    }

    /**
     * Gets the status property value. The status property
     * @return TicketSummary_status|null
    */
    public function getStatus(): ?TicketSummary_status {
        return $this->status;
    }

    /**
     * Gets the subject property value. The subject property
     * @return string|null
    */
    public function getSubject(): ?string {
        return $this->subject;
    }

    /**
     * Gets the ticketNumber property value. The ticketNumber property
     * @return int|null
    */
    public function getTicketNumber(): ?int {
        return $this->ticketNumber;
    }

    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return string|null
    */
    public function getUpdatedAt(): ?string {
        return $this->updatedAt;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('category', $this->getCategory());
        $writer->writeStringValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeEnumValue('priority', $this->getPriority());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeStringValue('subject', $this->getSubject());
        $writer->writeIntegerValue('ticketNumber', $this->getTicketNumber());
        $writer->writeStringValue('updatedAt', $this->getUpdatedAt());
    }

    /**
     * Sets the category property value. The category property
     * @param string|null $value Value to set for the category property.
    */
    public function setCategory(?string $value): void {
        $this->category = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param string|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?string $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the id property value. The id property
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the priority property value. The priority property
     * @param TicketSummary_priority|null $value Value to set for the priority property.
    */
    public function setPriority(?TicketSummary_priority $value): void {
        $this->priority = $value;
    }

    /**
     * Sets the status property value. The status property
     * @param TicketSummary_status|null $value Value to set for the status property.
    */
    public function setStatus(?TicketSummary_status $value): void {
        $this->status = $value;
    }

    /**
     * Sets the subject property value. The subject property
     * @param string|null $value Value to set for the subject property.
    */
    public function setSubject(?string $value): void {
        $this->subject = $value;
    }

    /**
     * Sets the ticketNumber property value. The ticketNumber property
     * @param int|null $value Value to set for the ticketNumber property.
    */
    public function setTicketNumber(?int $value): void {
        $this->ticketNumber = $value;
    }

    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param string|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?string $value): void {
        $this->updatedAt = $value;
    }

}
