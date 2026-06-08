<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamProfile_tagMember1, string
*/
class ApiTeamProfile_tag implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamProfile_tagMember1|null $apiTeamProfile_tagMember1 Composed type representation for type ApiTeamProfile_tagMember1
    */
    private ?ApiTeamProfile_tagMember1 $apiTeamProfile_tagMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamProfile_tag
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamProfile_tag {
        $result = new ApiTeamProfile_tag();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamProfileTagMember1(new ApiTeamProfile_tagMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamProfile_tagMember1 property value. Composed type representation for type ApiTeamProfile_tagMember1
     * @return ApiTeamProfile_tagMember1|null
    */
    public function getApiTeamProfileTagMember1(): ?ApiTeamProfile_tagMember1 {
        return $this->apiTeamProfile_tagMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamProfileTagMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamProfileTagMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamProfileTagMember1());
        }
    }

    /**
     * Sets the ApiTeamProfile_tagMember1 property value. Composed type representation for type ApiTeamProfile_tagMember1
     * @param ApiTeamProfile_tagMember1|null $value Value to set for the ApiTeamProfile_tagMember1 property.
    */
    public function setApiTeamProfileTagMember1(?ApiTeamProfile_tagMember1 $value): void {
        $this->apiTeamProfile_tagMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
