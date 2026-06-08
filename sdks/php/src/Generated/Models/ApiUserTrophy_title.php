<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserTrophy_titleMember1, string
*/
class ApiUserTrophy_title implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserTrophy_titleMember1|null $apiUserTrophy_titleMember1 Composed type representation for type ApiUserTrophy_titleMember1
    */
    private ?ApiUserTrophy_titleMember1 $apiUserTrophy_titleMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTrophy_title
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTrophy_title {
        $result = new ApiUserTrophy_title();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserTrophyTitleMember1(new ApiUserTrophy_titleMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserTrophy_titleMember1 property value. Composed type representation for type ApiUserTrophy_titleMember1
     * @return ApiUserTrophy_titleMember1|null
    */
    public function getApiUserTrophyTitleMember1(): ?ApiUserTrophy_titleMember1 {
        return $this->apiUserTrophy_titleMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserTrophyTitleMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserTrophyTitleMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserTrophyTitleMember1());
        }
    }

    /**
     * Sets the ApiUserTrophy_titleMember1 property value. Composed type representation for type ApiUserTrophy_titleMember1
     * @param ApiUserTrophy_titleMember1|null $value Value to set for the ApiUserTrophy_titleMember1 property.
    */
    public function setApiUserTrophyTitleMember1(?ApiUserTrophy_titleMember1 $value): void {
        $this->apiUserTrophy_titleMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
