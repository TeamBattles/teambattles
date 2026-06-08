<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TicketDetail_updatedAtMember1
*/
class TicketDetail_updatedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TicketDetail_updatedAtMember1|null $ticketDetail_updatedAtMember1 Composed type representation for type TicketDetail_updatedAtMember1
    */
    private ?TicketDetail_updatedAtMember1 $ticketDetail_updatedAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketDetail_updatedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketDetail_updatedAt {
        $result = new TicketDetail_updatedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTicketDetailUpdatedAtMember1(new TicketDetail_updatedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTicketDetailUpdatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTicketDetailUpdatedAtMember1());
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
     * Gets the TicketDetail_updatedAtMember1 property value. Composed type representation for type TicketDetail_updatedAtMember1
     * @return TicketDetail_updatedAtMember1|null
    */
    public function getTicketDetailUpdatedAtMember1(): ?TicketDetail_updatedAtMember1 {
        return $this->ticketDetail_updatedAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTicketDetailUpdatedAtMember1());
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
     * Sets the TicketDetail_updatedAtMember1 property value. Composed type representation for type TicketDetail_updatedAtMember1
     * @param TicketDetail_updatedAtMember1|null $value Value to set for the TicketDetail_updatedAtMember1 property.
    */
    public function setTicketDetailUpdatedAtMember1(?TicketDetail_updatedAtMember1 $value): void {
        $this->ticketDetail_updatedAtMember1 = $value;
    }

}
