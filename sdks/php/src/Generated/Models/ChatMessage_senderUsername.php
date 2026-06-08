<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ChatMessage_senderUsernameMember1, string
*/
class ChatMessage_senderUsername implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ChatMessage_senderUsernameMember1|null $chatMessage_senderUsernameMember1 Composed type representation for type ChatMessage_senderUsernameMember1
    */
    private ?ChatMessage_senderUsernameMember1 $chatMessage_senderUsernameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ChatMessage_senderUsername
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ChatMessage_senderUsername {
        $result = new ChatMessage_senderUsername();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setChatMessageSenderUsernameMember1(new ChatMessage_senderUsernameMember1());
        }
        return $result;
    }

    /**
     * Gets the ChatMessage_senderUsernameMember1 property value. Composed type representation for type ChatMessage_senderUsernameMember1
     * @return ChatMessage_senderUsernameMember1|null
    */
    public function getChatMessageSenderUsernameMember1(): ?ChatMessage_senderUsernameMember1 {
        return $this->chatMessage_senderUsernameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getChatMessageSenderUsernameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getChatMessageSenderUsernameMember1());
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
            $writer->writeObjectValue(null, $this->getChatMessageSenderUsernameMember1());
        }
    }

    /**
     * Sets the ChatMessage_senderUsernameMember1 property value. Composed type representation for type ChatMessage_senderUsernameMember1
     * @param ChatMessage_senderUsernameMember1|null $value Value to set for the ChatMessage_senderUsernameMember1 property.
    */
    public function setChatMessageSenderUsernameMember1(?ChatMessage_senderUsernameMember1 $value): void {
        $this->chatMessage_senderUsernameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
