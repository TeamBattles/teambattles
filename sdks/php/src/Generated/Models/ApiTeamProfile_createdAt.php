<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamProfile_createdAtMember1, string
*/
class ApiTeamProfile_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamProfile_createdAtMember1|null $apiTeamProfile_createdAtMember1 Composed type representation for type ApiTeamProfile_createdAtMember1
    */
    private ?ApiTeamProfile_createdAtMember1 $apiTeamProfile_createdAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamProfile_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamProfile_createdAt {
        $result = new ApiTeamProfile_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamProfileCreatedAtMember1(new ApiTeamProfile_createdAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamProfile_createdAtMember1 property value. Composed type representation for type ApiTeamProfile_createdAtMember1
     * @return ApiTeamProfile_createdAtMember1|null
    */
    public function getApiTeamProfileCreatedAtMember1(): ?ApiTeamProfile_createdAtMember1 {
        return $this->apiTeamProfile_createdAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamProfileCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamProfileCreatedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamProfileCreatedAtMember1());
        }
    }

    /**
     * Sets the ApiTeamProfile_createdAtMember1 property value. Composed type representation for type ApiTeamProfile_createdAtMember1
     * @param ApiTeamProfile_createdAtMember1|null $value Value to set for the ApiTeamProfile_createdAtMember1 property.
    */
    public function setApiTeamProfileCreatedAtMember1(?ApiTeamProfile_createdAtMember1 $value): void {
        $this->apiTeamProfile_createdAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
