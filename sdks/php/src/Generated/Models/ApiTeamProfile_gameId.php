<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamProfile_gameIdMember1, string
*/
class ApiTeamProfile_gameId implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamProfile_gameIdMember1|null $apiTeamProfile_gameIdMember1 Composed type representation for type ApiTeamProfile_gameIdMember1
    */
    private ?ApiTeamProfile_gameIdMember1 $apiTeamProfile_gameIdMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamProfile_gameId
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamProfile_gameId {
        $result = new ApiTeamProfile_gameId();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamProfileGameIdMember1(new ApiTeamProfile_gameIdMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamProfile_gameIdMember1 property value. Composed type representation for type ApiTeamProfile_gameIdMember1
     * @return ApiTeamProfile_gameIdMember1|null
    */
    public function getApiTeamProfileGameIdMember1(): ?ApiTeamProfile_gameIdMember1 {
        return $this->apiTeamProfile_gameIdMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamProfileGameIdMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamProfileGameIdMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamProfileGameIdMember1());
        }
    }

    /**
     * Sets the ApiTeamProfile_gameIdMember1 property value. Composed type representation for type ApiTeamProfile_gameIdMember1
     * @param ApiTeamProfile_gameIdMember1|null $value Value to set for the ApiTeamProfile_gameIdMember1 property.
    */
    public function setApiTeamProfileGameIdMember1(?ApiTeamProfile_gameIdMember1 $value): void {
        $this->apiTeamProfile_gameIdMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
