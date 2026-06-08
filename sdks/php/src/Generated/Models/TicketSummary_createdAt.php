<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TicketSummary_createdAtMember1
*/
class TicketSummary_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TicketSummary_createdAtMember1|null $ticketSummary_createdAtMember1 Composed type representation for type TicketSummary_createdAtMember1
    */
    private ?TicketSummary_createdAtMember1 $ticketSummary_createdAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketSummary_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketSummary_createdAt {
        $result = new TicketSummary_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTicketSummaryCreatedAtMember1(new TicketSummary_createdAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTicketSummaryCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTicketSummaryCreatedAtMember1());
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
     * Gets the TicketSummary_createdAtMember1 property value. Composed type representation for type TicketSummary_createdAtMember1
     * @return TicketSummary_createdAtMember1|null
    */
    public function getTicketSummaryCreatedAtMember1(): ?TicketSummary_createdAtMember1 {
        return $this->ticketSummary_createdAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTicketSummaryCreatedAtMember1());
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
     * Sets the TicketSummary_createdAtMember1 property value. Composed type representation for type TicketSummary_createdAtMember1
     * @param TicketSummary_createdAtMember1|null $value Value to set for the TicketSummary_createdAtMember1 property.
    */
    public function setTicketSummaryCreatedAtMember1(?TicketSummary_createdAtMember1 $value): void {
        $this->ticketSummary_createdAtMember1 = $value;
    }

}
