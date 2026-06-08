<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ChatMessage_replyToIdMember1, string
*/
class ChatMessage_replyToId implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ChatMessage_replyToIdMember1|null $chatMessage_replyToIdMember1 Composed type representation for type ChatMessage_replyToIdMember1
    */
    private ?ChatMessage_replyToIdMember1 $chatMessage_replyToIdMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ChatMessage_replyToId
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ChatMessage_replyToId {
        $result = new ChatMessage_replyToId();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setChatMessageReplyToIdMember1(new ChatMessage_replyToIdMember1());
        }
        return $result;
    }

    /**
     * Gets the ChatMessage_replyToIdMember1 property value. Composed type representation for type ChatMessage_replyToIdMember1
     * @return ChatMessage_replyToIdMember1|null
    */
    public function getChatMessageReplyToIdMember1(): ?ChatMessage_replyToIdMember1 {
        return $this->chatMessage_replyToIdMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getChatMessageReplyToIdMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getChatMessageReplyToIdMember1());
        }
        return [];
    }

    /**
     * Gets the string property value. Composed type representation for type string
     * @return string|null
    */
    public function getString(): ?string {
        return $this->string;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getChatMessageReplyToIdMember1());
        }
    }

    /**
     * Sets the ChatMessage_replyToIdMember1 property value. Composed type representation for type ChatMessage_replyToIdMember1
     * @param ChatMessage_replyToIdMember1|null $value Value to set for the ChatMessage_replyToIdMember1 property.
    */
    public function setChatMessageReplyToIdMember1(?ChatMessage_replyToIdMember1 $value): void {
        $this->chatMessage_replyToIdMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
