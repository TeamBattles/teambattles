<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, UserMatch_scheduledAtMember1
*/
class UserMatch_scheduledAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var UserMatch_scheduledAtMember1|null $userMatch_scheduledAtMember1 Composed type representation for type UserMatch_scheduledAtMember1
    */
    private ?UserMatch_scheduledAtMember1 $userMatch_scheduledAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UserMatch_scheduledAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UserMatch_scheduledAt {
        $result = new UserMatch_scheduledAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setUserMatchScheduledAtMember1(new UserMatch_scheduledAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getUserMatchScheduledAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getUserMatchScheduledAtMember1());
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
     * Gets the UserMatch_scheduledAtMember1 property value. Composed type representation for type UserMatch_scheduledAtMember1
     * @return UserMatch_scheduledAtMember1|null
    */
    public function getUserMatchScheduledAtMember1(): ?UserMatch_scheduledAtMember1 {
        return $this->userMatch_scheduledAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getUserMatchScheduledAtMember1());
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
     * Sets the UserMatch_scheduledAtMember1 property value. Composed type representation for type UserMatch_scheduledAtMember1
     * @param UserMatch_scheduledAtMember1|null $value Value to set for the UserMatch_scheduledAtMember1 property.
    */
    public function setUserMatchScheduledAtMember1(?UserMatch_scheduledAtMember1 $value): void {
        $this->userMatch_scheduledAtMember1 = $value;
    }

}
