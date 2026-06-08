<?php

namespace TeamBattles\Sdk\Generated\Tickets;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TicketsGetResponse_nextCursorMember1
*/
class TicketsGetResponse_nextCursor implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TicketsGetResponse_nextCursorMember1|null $ticketsGetResponse_nextCursorMember1 Composed type representation for type TicketsGetResponse_nextCursorMember1
    */
    private ?TicketsGetResponse_nextCursorMember1 $ticketsGetResponse_nextCursorMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketsGetResponse_nextCursor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketsGetResponse_nextCursor {
        $result = new TicketsGetResponse_nextCursor();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTicketsGetResponseNextCursorMember1(new TicketsGetResponse_nextCursorMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTicketsGetResponseNextCursorMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTicketsGetResponseNextCursorMember1());
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
     * Gets the ticketsGetResponse_nextCursorMember1 property value. Composed type representation for type TicketsGetResponse_nextCursorMember1
     * @return TicketsGetResponse_nextCursorMember1|null
    */
    public function getTicketsGetResponseNextCursorMember1(): ?TicketsGetResponse_nextCursorMember1 {
        return $this->ticketsGetResponse_nextCursorMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTicketsGetResponseNextCursorMember1());
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
     * Sets the ticketsGetResponse_nextCursorMember1 property value. Composed type representation for type TicketsGetResponse_nextCursorMember1
     * @param TicketsGetResponse_nextCursorMember1|null $value Value to set for the ticketsGetResponse_nextCursorMember1 property.
    */
    public function setTicketsGetResponseNextCursorMember1(?TicketsGetResponse_nextCursorMember1 $value): void {
        $this->ticketsGetResponse_nextCursorMember1 = $value;
    }

}
