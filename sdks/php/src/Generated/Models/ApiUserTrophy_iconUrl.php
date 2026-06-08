<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserTrophy_iconUrlMember1, string
*/
class ApiUserTrophy_iconUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserTrophy_iconUrlMember1|null $apiUserTrophy_iconUrlMember1 Composed type representation for type ApiUserTrophy_iconUrlMember1
    */
    private ?ApiUserTrophy_iconUrlMember1 $apiUserTrophy_iconUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTrophy_iconUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTrophy_iconUrl {
        $result = new ApiUserTrophy_iconUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserTrophyIconUrlMember1(new ApiUserTrophy_iconUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserTrophy_iconUrlMember1 property value. Composed type representation for type ApiUserTrophy_iconUrlMember1
     * @return ApiUserTrophy_iconUrlMember1|null
    */
    public function getApiUserTrophyIconUrlMember1(): ?ApiUserTrophy_iconUrlMember1 {
        return $this->apiUserTrophy_iconUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserTrophyIconUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserTrophyIconUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserTrophyIconUrlMember1());
        }
    }

    /**
     * Sets the ApiUserTrophy_iconUrlMember1 property value. Composed type representation for type ApiUserTrophy_iconUrlMember1
     * @param ApiUserTrophy_iconUrlMember1|null $value Value to set for the ApiUserTrophy_iconUrlMember1 property.
    */
    public function setApiUserTrophyIconUrlMember1(?ApiUserTrophy_iconUrlMember1 $value): void {
        $this->apiUserTrophy_iconUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
