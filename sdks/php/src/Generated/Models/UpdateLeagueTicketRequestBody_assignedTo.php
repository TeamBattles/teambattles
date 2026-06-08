<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, UpdateLeagueTicketRequestBody_assignedToMember1
*/
class UpdateLeagueTicketRequestBody_assignedTo implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var UpdateLeagueTicketRequestBody_assignedToMember1|null $updateLeagueTicketRequestBody_assignedToMember1 Composed type representation for type UpdateLeagueTicketRequestBody_assignedToMember1
    */
    private ?UpdateLeagueTicketRequestBody_assignedToMember1 $updateLeagueTicketRequestBody_assignedToMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateLeagueTicketRequestBody_assignedTo
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateLeagueTicketRequestBody_assignedTo {
        $result = new UpdateLeagueTicketRequestBody_assignedTo();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setUpdateLeagueTicketRequestBodyAssignedToMember1(new UpdateLeagueTicketRequestBody_assignedToMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getUpdateLeagueTicketRequestBodyAssignedToMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getUpdateLeagueTicketRequestBodyAssignedToMember1());
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
     * Gets the UpdateLeagueTicketRequestBody_assignedToMember1 property value. Composed type representation for type UpdateLeagueTicketRequestBody_assignedToMember1
     * @return UpdateLeagueTicketRequestBody_assignedToMember1|null
    */
    public function getUpdateLeagueTicketRequestBodyAssignedToMember1(): ?UpdateLeagueTicketRequestBody_assignedToMember1 {
        return $this->updateLeagueTicketRequestBody_assignedToMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getUpdateLeagueTicketRequestBodyAssignedToMember1());
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
     * Sets the UpdateLeagueTicketRequestBody_assignedToMember1 property value. Composed type representation for type UpdateLeagueTicketRequestBody_assignedToMember1
     * @param UpdateLeagueTicketRequestBody_assignedToMember1|null $value Value to set for the UpdateLeagueTicketRequestBody_assignedToMember1 property.
    */
    public function setUpdateLeagueTicketRequestBodyAssignedToMember1(?UpdateLeagueTicketRequestBody_assignedToMember1 $value): void {
        $this->updateLeagueTicketRequestBody_assignedToMember1 = $value;
    }

}
