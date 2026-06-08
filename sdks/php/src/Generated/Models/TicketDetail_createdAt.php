<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TicketDetail_createdAtMember1
*/
class TicketDetail_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TicketDetail_createdAtMember1|null $ticketDetail_createdAtMember1 Composed type representation for type TicketDetail_createdAtMember1
    */
    private ?TicketDetail_createdAtMember1 $ticketDetail_createdAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketDetail_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketDetail_createdAt {
        $result = new TicketDetail_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTicketDetailCreatedAtMember1(new TicketDetail_createdAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTicketDetailCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTicketDetailCreatedAtMember1());
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
     * Gets the TicketDetail_createdAtMember1 property value. Composed type representation for type TicketDetail_createdAtMember1
     * @return TicketDetail_createdAtMember1|null
    */
    public function getTicketDetailCreatedAtMember1(): ?TicketDetail_createdAtMember1 {
        return $this->ticketDetail_createdAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTicketDetailCreatedAtMember1());
        }
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

    /**
     * Sets the TicketDetail_createdAtMember1 property value. Composed type representation for type TicketDetail_createdAtMember1
     * @param TicketDetail_createdAtMember1|null $value Value to set for the TicketDetail_createdAtMember1 property.
    */
    public function setTicketDetailCreatedAtMember1(?TicketDetail_createdAtMember1 $value): void {
        $this->ticketDetail_createdAtMember1 = $value;
    }

}
