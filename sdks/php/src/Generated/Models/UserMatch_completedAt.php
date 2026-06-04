<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, UserMatch_completedAtMember1
*/
class UserMatch_completedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var UserMatch_completedAtMember1|null $userMatch_completedAtMember1 Composed type representation for type UserMatch_completedAtMember1
    */
    private ?UserMatch_completedAtMember1 $userMatch_completedAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UserMatch_completedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UserMatch_completedAt {
        $result = new UserMatch_completedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setUserMatchCompletedAtMember1(new UserMatch_completedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getUserMatchCompletedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getUserMatchCompletedAtMember1());
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
     * Gets the UserMatch_completedAtMember1 property value. Composed type representation for type UserMatch_completedAtMember1
     * @return UserMatch_completedAtMember1|null
    */
    public function getUserMatchCompletedAtMember1(): ?UserMatch_completedAtMember1 {
        return $this->userMatch_completedAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getUserMatchCompletedAtMember1());
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
     * Sets the UserMatch_completedAtMember1 property value. Composed type representation for type UserMatch_completedAtMember1
     * @param UserMatch_completedAtMember1|null $value Value to set for the UserMatch_completedAtMember1 property.
    */
    public function setUserMatchCompletedAtMember1(?UserMatch_completedAtMember1 $value): void {
        $this->userMatch_completedAtMember1 = $value;
    }

}
