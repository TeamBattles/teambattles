<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class ChatMessage implements Parsable 
{
    /**
     * @var string|null $content The content property
    */
    private ?string $content = null;
    
    /**
     * @var string|null $createdAt The createdAt property
    */
    private ?string $createdAt = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var string|null $replyToId The replyToId property
    */
    private ?string $replyToId = null;
    
    /**
     * @var string|null $senderUserId The senderUserId property
    */
    private ?string $senderUserId = null;
    
    /**
     * @var string|null $senderUsername The senderUsername property
    */
    private ?string $senderUsername = null;
    
    /**
     * @var string|null $teamId The teamId property
    */
    private ?string $teamId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ChatMessage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ChatMessage {
        return new ChatMessage();
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
            'content' => fn(ParseNode $n) => $o->setContent($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'replyToId' => fn(ParseNode $n) => $o->setReplyToId($n->getStringValue()),
            'senderUserId' => fn(ParseNode $n) => $o->setSenderUserId($n->getStringValue()),
            'senderUsername' => fn(ParseNode $n) => $o->setSenderUsername($n->getStringValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
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
     * Gets the replyToId property value. The replyToId property
     * @return string|null
    */
    public function getReplyToId(): ?string {
        return $this->replyToId;
    }

    /**
     * Gets the senderUserId property value. The senderUserId property
     * @return string|null
    */
    public function getSenderUserId(): ?string {
        return $this->senderUserId;
    }

    /**
     * Gets the senderUsername property value. The senderUsername property
     * @return string|null
    */
    public function getSenderUsername(): ?string {
        return $this->senderUsername;
    }

    /**
     * Gets the teamId property value. The teamId property
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('content', $this->getContent());
        $writer->writeStringValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('replyToId', $this->getReplyToId());
        $writer->writeStringValue('senderUserId', $this->getSenderUserId());
        $writer->writeStringValue('senderUsername', $this->getSenderUsername());
        $writer->writeStringValue('teamId', $this->getTeamId());
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
     * Sets the replyToId property value. The replyToId property
     * @param string|null $value Value to set for the replyToId property.
    */
    public function setReplyToId(?string $value): void {
        $this->replyToId = $value;
    }

    /**
     * Sets the senderUserId property value. The senderUserId property
     * @param string|null $value Value to set for the senderUserId property.
    */
    public function setSenderUserId(?string $value): void {
        $this->senderUserId = $value;
    }

    /**
     * Sets the senderUsername property value. The senderUsername property
     * @param string|null $value Value to set for the senderUsername property.
    */
    public function setSenderUsername(?string $value): void {
        $this->senderUsername = $value;
    }

    /**
     * Sets the teamId property value. The teamId property
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

}
