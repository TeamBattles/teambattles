<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiOrganizationProfile_descriptionMember1, string
*/
class ApiOrganizationProfile_description implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiOrganizationProfile_descriptionMember1|null $apiOrganizationProfile_descriptionMember1 Composed type representation for type ApiOrganizationProfile_descriptionMember1
    */
    private ?ApiOrganizationProfile_descriptionMember1 $apiOrganizationProfile_descriptionMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOrganizationProfile_description
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOrganizationProfile_description {
        $result = new ApiOrganizationProfile_description();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiOrganizationProfileDescriptionMember1(new ApiOrganizationProfile_descriptionMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiOrganizationProfile_descriptionMember1 property value. Composed type representation for type ApiOrganizationProfile_descriptionMember1
     * @return ApiOrganizationProfile_descriptionMember1|null
    */
    public function getApiOrganizationProfileDescriptionMember1(): ?ApiOrganizationProfile_descriptionMember1 {
        return $this->apiOrganizationProfile_descriptionMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiOrganizationProfileDescriptionMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiOrganizationProfileDescriptionMember1());
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
            $writer->writeObjectValue(null, $this->getApiOrganizationProfileDescriptionMember1());
        }
    }

    /**
     * Sets the ApiOrganizationProfile_descriptionMember1 property value. Composed type representation for type ApiOrganizationProfile_descriptionMember1
     * @param ApiOrganizationProfile_descriptionMember1|null $value Value to set for the ApiOrganizationProfile_descriptionMember1 property.
    */
    public function setApiOrganizationProfileDescriptionMember1(?ApiOrganizationProfile_descriptionMember1 $value): void {
        $this->apiOrganizationProfile_descriptionMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
