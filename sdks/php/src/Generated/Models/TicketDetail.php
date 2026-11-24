<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class TicketDetail implements Parsable 
{
    /**
     * @var string|null $category The category property
    */
    private ?string $category = null;
    
    /**
     * @var string|null $closedAt The closedAt property
    */
    private ?string $closedAt = null;
    
    /**
     * @var string|null $createdAt The createdAt property
    */
    private ?string $createdAt = null;
    
    /**
     * @var string|null $description The description property
    */
    private ?string $description = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var array<TicketDetail_messages>|null $messages The messages property
    */
    private ?array $messages = null;
    
    /**
     * @var TicketDetail_priority|null $priority The priority property
    */
    private ?TicketDetail_priority $priority = null;
    
    /**
     * @var string|null $resolvedAt The resolvedAt property
    */
    private ?string $resolvedAt = null;
    
    /**
     * @var TicketDetail_status|null $status The status property
    */
    private ?TicketDetail_status $status = null;
    
    /**
     * @var string|null $subject The subject property
    */
    private ?string $subject = null;
    
    /**
     * @var int|null $ticketNumber The ticketNumber property
    */
    private ?int $ticketNumber = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * @var string|null $updatedAt The updatedAt property
    */
    private ?string $updatedAt = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketDetail
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketDetail {
        return new TicketDetail();
    }

    /**
     * Gets the category property value. The category property
     * @return string|null
    */
    public function getCategory(): ?string {
        return $this->category;
    }

    /**
     * Gets the closedAt property value. The closedAt property
     * @return string|null
    */
    public function getClosedAt(): ?string {
        return $this->closedAt;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return string|null
    */
    public function getCreatedAt(): ?string {
        return $this->createdAt;
    }

    /**
     * Gets the description property value. The description property
     * @return string|null
    */
    public function getDescription(): ?string {
        return $this->description;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'category' => fn(ParseNode $n) => $o->setCategory($n->getStringValue()),
            'closedAt' => fn(ParseNode $n) => $o->setClosedAt($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'messages' => fn(ParseNode $n) => $o->setMessages($n->getCollectionOfObjectValues([TicketDetail_messages::class, 'createFromDiscriminatorValue'])),
            'priority' => fn(ParseNode $n) => $o->setPriority($n->getEnumValue(TicketDetail_priority::class)),
            'resolvedAt' => fn(ParseNode $n) => $o->setResolvedAt($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TicketDetail_status::class)),
            'subject' => fn(ParseNode $n) => $o->setSubject($n->getStringValue()),
            'ticketNumber' => fn(ParseNode $n) => $o->setTicketNumber($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
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
     * Gets the messages property value. The messages property
     * @return array<TicketDetail_messages>|null
    */
    public function getMessages(): ?array {
        return $this->messages;
    }

    /**
     * Gets the priority property value. The priority property
     * @return TicketDetail_priority|null
    */
    public function getPriority(): ?TicketDetail_priority {
        return $this->priority;
    }

    /**
     * Gets the resolvedAt property value. The resolvedAt property
     * @return string|null
    */
    public function getResolvedAt(): ?string {
        return $this->resolvedAt;
    }

    /**
     * Gets the status property value. The status property
     * @return TicketDetail_status|null
    */
    public function getStatus(): ?TicketDetail_status {
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
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
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
        $writer->writeStringValue('closedAt', $this->getClosedAt());
        $writer->writeStringValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeCollectionOfObjectValues('messages', $this->getMessages());
        $writer->writeEnumValue('priority', $this->getPriority());
        $writer->writeStringValue('resolvedAt', $this->getResolvedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeStringValue('subject', $this->getSubject());
        $writer->writeIntegerValue('ticketNumber', $this->getTicketNumber());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
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
     * Sets the closedAt property value. The closedAt property
     * @param string|null $value Value to set for the closedAt property.
    */
    public function setClosedAt(?string $value): void {
        $this->closedAt = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param string|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?string $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the description property value. The description property
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the id property value. The id property
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the messages property value. The messages property
     * @param array<TicketDetail_messages>|null $value Value to set for the messages property.
    */
    public function setMessages(?array $value): void {
        $this->messages = $value;
    }

    /**
     * Sets the priority property value. The priority property
     * @param TicketDetail_priority|null $value Value to set for the priority property.
    */
    public function setPriority(?TicketDetail_priority $value): void {
        $this->priority = $value;
    }

    /**
     * Sets the resolvedAt property value. The resolvedAt property
     * @param string|null $value Value to set for the resolvedAt property.
    */
    public function setResolvedAt(?string $value): void {
        $this->resolvedAt = $value;
    }

    /**
     * Sets the status property value. The status property
     * @param TicketDetail_status|null $value Value to set for the status property.
    */
    public function setStatus(?TicketDetail_status $value): void {
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
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param string|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?string $value): void {
        $this->updatedAt = $value;
    }

}
