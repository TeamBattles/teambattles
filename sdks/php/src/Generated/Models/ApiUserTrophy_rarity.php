<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserTrophy_rarityMember1, string
*/
class ApiUserTrophy_rarity implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserTrophy_rarityMember1|null $apiUserTrophy_rarityMember1 Composed type representation for type ApiUserTrophy_rarityMember1
    */
    private ?ApiUserTrophy_rarityMember1 $apiUserTrophy_rarityMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTrophy_rarity
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTrophy_rarity {
        $result = new ApiUserTrophy_rarity();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserTrophyRarityMember1(new ApiUserTrophy_rarityMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserTrophy_rarityMember1 property value. Composed type representation for type ApiUserTrophy_rarityMember1
     * @return ApiUserTrophy_rarityMember1|null
    */
    public function getApiUserTrophyRarityMember1(): ?ApiUserTrophy_rarityMember1 {
        return $this->apiUserTrophy_rarityMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserTrophyRarityMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserTrophyRarityMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserTrophyRarityMember1());
        }
    }

    /**
     * Sets the ApiUserTrophy_rarityMember1 property value. Composed type representation for type ApiUserTrophy_rarityMember1
     * @param ApiUserTrophy_rarityMember1|null $value Value to set for the ApiUserTrophy_rarityMember1 property.
    */
    public function setApiUserTrophyRarityMember1(?ApiUserTrophy_rarityMember1 $value): void {
        $this->apiUserTrophy_rarityMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
