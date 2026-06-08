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
     * @var ChatMessage_createdAt|null $createdAt The createdAt property
    */
    private ?ChatMessage_createdAt $createdAt = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var ChatMessage_replyToId|null $replyToId The replyToId property
    */
    private ?ChatMessage_replyToId $replyToId = null;
    
    /**
     * @var string|null $senderUserId The senderUserId property
    */
    private ?string $senderUserId = null;
    
    /**
     * @var ChatMessage_senderUsername|null $senderUsername The senderUsername property
    */
    private ?ChatMessage_senderUsername $senderUsername = null;
    
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
     * @return ChatMessage_createdAt|null
    */
    public function getCreatedAt(): ?ChatMessage_createdAt {
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
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ChatMessage_createdAt::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'replyToId' => fn(ParseNode $n) => $o->setReplyToId($n->getObjectValue([ChatMessage_replyToId::class, 'createFromDiscriminatorValue'])),
            'senderUserId' => fn(ParseNode $n) => $o->setSenderUserId($n->getStringValue()),
            'senderUsername' => fn(ParseNode $n) => $o->setSenderUsername($n->getObjectValue([ChatMessage_senderUsername::class, 'createFromDiscriminatorValue'])),
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
     * @return ChatMessage_replyToId|null
    */
    public function getReplyToId(): ?ChatMessage_replyToId {
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
     * @return ChatMessage_senderUsername|null
    */
    public function getSenderUsername(): ?ChatMessage_senderUsername {
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
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('replyToId', $this->getReplyToId());
        $writer->writeStringValue('senderUserId', $this->getSenderUserId());
        $writer->writeObjectValue('senderUsername', $this->getSenderUsername());
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
     * @param ChatMessage_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?ChatMessage_createdAt $value): void {
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
     * @param ChatMessage_replyToId|null $value Value to set for the replyToId property.
    */
    public function setReplyToId(?ChatMessage_replyToId $value): void {
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
     * @param ChatMessage_senderUsername|null $value Value to set for the senderUsername property.
    */
    public function setSenderUsername(?ChatMessage_senderUsername $value): void {
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
