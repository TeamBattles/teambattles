<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiOrganizationProfile_createdAtMember1, string
*/
class ApiOrganizationProfile_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiOrganizationProfile_createdAtMember1|null $apiOrganizationProfile_createdAtMember1 Composed type representation for type ApiOrganizationProfile_createdAtMember1
    */
    private ?ApiOrganizationProfile_createdAtMember1 $apiOrganizationProfile_createdAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOrganizationProfile_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOrganizationProfile_createdAt {
        $result = new ApiOrganizationProfile_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiOrganizationProfileCreatedAtMember1(new ApiOrganizationProfile_createdAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiOrganizationProfile_createdAtMember1 property value. Composed type representation for type ApiOrganizationProfile_createdAtMember1
     * @return ApiOrganizationProfile_createdAtMember1|null
    */
    public function getApiOrganizationProfileCreatedAtMember1(): ?ApiOrganizationProfile_createdAtMember1 {
        return $this->apiOrganizationProfile_createdAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiOrganizationProfileCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiOrganizationProfileCreatedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiOrganizationProfileCreatedAtMember1());
        }
    }

    /**
     * Sets the ApiOrganizationProfile_createdAtMember1 property value. Composed type representation for type ApiOrganizationProfile_createdAtMember1
     * @param ApiOrganizationProfile_createdAtMember1|null $value Value to set for the ApiOrganizationProfile_createdAtMember1 property.
    */
    public function setApiOrganizationProfileCreatedAtMember1(?ApiOrganizationProfile_createdAtMember1 $value): void {
        $this->apiOrganizationProfile_createdAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
