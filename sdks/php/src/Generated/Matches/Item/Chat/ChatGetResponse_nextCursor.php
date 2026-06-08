<?php

namespace TeamBattles\Sdk\Generated\Matches\Item\Chat;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ChatGetResponse_nextCursorMember1, string
*/
class ChatGetResponse_nextCursor implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ChatGetResponse_nextCursorMember1|null $chatGetResponse_nextCursorMember1 Composed type representation for type ChatGetResponse_nextCursorMember1
    */
    private ?ChatGetResponse_nextCursorMember1 $chatGetResponse_nextCursorMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ChatGetResponse_nextCursor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ChatGetResponse_nextCursor {
        $result = new ChatGetResponse_nextCursor();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setChatGetResponseNextCursorMember1(new ChatGetResponse_nextCursorMember1());
        }
        return $result;
    }

    /**
     * Gets the chatGetResponse_nextCursorMember1 property value. Composed type representation for type ChatGetResponse_nextCursorMember1
     * @return ChatGetResponse_nextCursorMember1|null
    */
    public function getChatGetResponseNextCursorMember1(): ?ChatGetResponse_nextCursorMember1 {
        return $this->chatGetResponse_nextCursorMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getChatGetResponseNextCursorMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getChatGetResponseNextCursorMember1());
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
            $writer->writeObjectValue(null, $this->getChatGetResponseNextCursorMember1());
        }
    }

    /**
     * Sets the chatGetResponse_nextCursorMember1 property value. Composed type representation for type ChatGetResponse_nextCursorMember1
     * @param ChatGetResponse_nextCursorMember1|null $value Value to set for the chatGetResponse_nextCursorMember1 property.
    */
    public function setChatGetResponseNextCursorMember1(?ChatGetResponse_nextCursorMember1 $value): void {
        $this->chatGetResponse_nextCursorMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
