<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class TicketDetail_messages implements Parsable 
{
    /**
     * @var string|null $content The content property
    */
    private ?string $content = null;
    
    /**
     * @var TicketDetail_messages_createdAt|null $createdAt The createdAt property
    */
    private ?TicketDetail_messages_createdAt $createdAt = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isOwnMessage The isOwnMessage property
    */
    private ?bool $isOwnMessage = null;
    
    /**
     * @var bool|null $isSystem The isSystem property
    */
    private ?bool $isSystem = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketDetail_messages
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketDetail_messages {
        return new TicketDetail_messages();
    }

    /**
     * Gets the content property value. The content property
     * @return string|null
    */
    public function getContent(): ?string {
        return $this->content;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return TicketDetail_messages_createdAt|null
    */
    public function getCreatedAt(): ?TicketDetail_messages_createdAt {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'content' => fn(ParseNode $n) => $o->setContent($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([TicketDetail_messages_createdAt::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isOwnMessage' => fn(ParseNode $n) => $o->setIsOwnMessage($n->getBooleanValue()),
            'isSystem' => fn(ParseNode $n) => $o->setIsSystem($n->getBooleanValue()),
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
     * Gets the isOwnMessage property value. The isOwnMessage property
     * @return bool|null
    */
    public function getIsOwnMessage(): ?bool {
        return $this->isOwnMessage;
    }

    /**
     * Gets the isSystem property value. The isSystem property
     * @return bool|null
    */
    public function getIsSystem(): ?bool {
        return $this->isSystem;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('content', $this->getContent());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isOwnMessage', $this->getIsOwnMessage());
        $writer->writeBooleanValue('isSystem', $this->getIsSystem());
    }

    /**
     * Sets the content property value. The content property
     * @param string|null $value Value to set for the content property.
    */
    public function setContent(?string $value): void {
        $this->content = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param TicketDetail_messages_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?TicketDetail_messages_createdAt $value): void {
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
     * Sets the isOwnMessage property value. The isOwnMessage property
     * @param bool|null $value Value to set for the isOwnMessage property.
    */
    public function setIsOwnMessage(?bool $value): void {
        $this->isOwnMessage = $value;
    }

    /**
     * Sets the isSystem property value. The isSystem property
     * @param bool|null $value Value to set for the isSystem property.
    */
    public function setIsSystem(?bool $value): void {
        $this->isSystem = $value;
    }

}
