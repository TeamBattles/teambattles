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
     * @var TicketDetail_closedAt|null $closedAt The closedAt property
    */
    private ?TicketDetail_closedAt $closedAt = null;
    
    /**
     * @var TicketDetail_createdAt|null $createdAt The createdAt property
    */
    private ?TicketDetail_createdAt $createdAt = null;
    
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
     * @var TicketDetail_resolvedAt|null $resolvedAt The resolvedAt property
    */
    private ?TicketDetail_resolvedAt $resolvedAt = null;
    
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
     * @var TicketDetail_updatedAt|null $updatedAt The updatedAt property
    */
    private ?TicketDetail_updatedAt $updatedAt = null;
    
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
     * @return TicketDetail_closedAt|null
    */
    public function getClosedAt(): ?TicketDetail_closedAt {
        return $this->closedAt;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return TicketDetail_createdAt|null
    */
    public function getCreatedAt(): ?TicketDetail_createdAt {
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
            'closedAt' => fn(ParseNode $n) => $o->setClosedAt($n->getObjectValue([TicketDetail_closedAt::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([TicketDetail_createdAt::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'messages' => fn(ParseNode $n) => $o->setMessages($n->getCollectionOfObjectValues([TicketDetail_messages::class, 'createFromDiscriminatorValue'])),
            'priority' => fn(ParseNode $n) => $o->setPriority($n->getEnumValue(TicketDetail_priority::class)),
            'resolvedAt' => fn(ParseNode $n) => $o->setResolvedAt($n->getObjectValue([TicketDetail_resolvedAt::class, 'createFromDiscriminatorValue'])),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TicketDetail_status::class)),
            'subject' => fn(ParseNode $n) => $o->setSubject($n->getStringValue()),
            'ticketNumber' => fn(ParseNode $n) => $o->setTicketNumber($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getObjectValue([TicketDetail_updatedAt::class, 'createFromDiscriminatorValue'])),
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
     * @return TicketDetail_resolvedAt|null
    */
    public function getResolvedAt(): ?TicketDetail_resolvedAt {
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
     * @return TicketDetail_updatedAt|null
    */
    public function getUpdatedAt(): ?TicketDetail_updatedAt {
        return $this->updatedAt;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('category', $this->getCategory());
        $writer->writeObjectValue('closedAt', $this->getClosedAt());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeCollectionOfObjectValues('messages', $this->getMessages());
        $writer->writeEnumValue('priority', $this->getPriority());
        $writer->writeObjectValue('resolvedAt', $this->getResolvedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeStringValue('subject', $this->getSubject());
        $writer->writeIntegerValue('ticketNumber', $this->getTicketNumber());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeObjectValue('updatedAt', $this->getUpdatedAt());
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
     * @param TicketDetail_closedAt|null $value Value to set for the closedAt property.
    */
    public function setClosedAt(?TicketDetail_closedAt $value): void {
        $this->closedAt = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param TicketDetail_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?TicketDetail_createdAt $value): void {
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
     * @param TicketDetail_resolvedAt|null $value Value to set for the resolvedAt property.
    */
    public function setResolvedAt(?TicketDetail_resolvedAt $value): void {
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
     * @param TicketDetail_updatedAt|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?TicketDetail_updatedAt $value): void {
        $this->updatedAt = $value;
    }

}
