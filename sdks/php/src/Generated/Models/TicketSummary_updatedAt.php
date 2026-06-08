<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TicketSummary_updatedAtMember1
*/
class TicketSummary_updatedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TicketSummary_updatedAtMember1|null $ticketSummary_updatedAtMember1 Composed type representation for type TicketSummary_updatedAtMember1
    */
    private ?TicketSummary_updatedAtMember1 $ticketSummary_updatedAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketSummary_updatedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketSummary_updatedAt {
        $result = new TicketSummary_updatedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTicketSummaryUpdatedAtMember1(new TicketSummary_updatedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTicketSummaryUpdatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTicketSummaryUpdatedAtMember1());
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
     * Gets the TicketSummary_updatedAtMember1 property value. Composed type representation for type TicketSummary_updatedAtMember1
     * @return TicketSummary_updatedAtMember1|null
    */
    public function getTicketSummaryUpdatedAtMember1(): ?TicketSummary_updatedAtMember1 {
        return $this->ticketSummary_updatedAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTicketSummaryUpdatedAtMember1());
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
     * Sets the TicketSummary_updatedAtMember1 property value. Composed type representation for type TicketSummary_updatedAtMember1
     * @param TicketSummary_updatedAtMember1|null $value Value to set for the TicketSummary_updatedAtMember1 property.
    */
    public function setTicketSummaryUpdatedAtMember1(?TicketSummary_updatedAtMember1 $value): void {
        $this->ticketSummary_updatedAtMember1 = $value;
    }

}
