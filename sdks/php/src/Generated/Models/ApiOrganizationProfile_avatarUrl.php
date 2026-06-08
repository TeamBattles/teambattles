<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiOrganizationProfile_avatarUrlMember1, string
*/
class ApiOrganizationProfile_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiOrganizationProfile_avatarUrlMember1|null $apiOrganizationProfile_avatarUrlMember1 Composed type representation for type ApiOrganizationProfile_avatarUrlMember1
    */
    private ?ApiOrganizationProfile_avatarUrlMember1 $apiOrganizationProfile_avatarUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOrganizationProfile_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOrganizationProfile_avatarUrl {
        $result = new ApiOrganizationProfile_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiOrganizationProfileAvatarUrlMember1(new ApiOrganizationProfile_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiOrganizationProfile_avatarUrlMember1 property value. Composed type representation for type ApiOrganizationProfile_avatarUrlMember1
     * @return ApiOrganizationProfile_avatarUrlMember1|null
    */
    public function getApiOrganizationProfileAvatarUrlMember1(): ?ApiOrganizationProfile_avatarUrlMember1 {
        return $this->apiOrganizationProfile_avatarUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiOrganizationProfileAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiOrganizationProfileAvatarUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiOrganizationProfileAvatarUrlMember1());
        }
    }

    /**
     * Sets the ApiOrganizationProfile_avatarUrlMember1 property value. Composed type representation for type ApiOrganizationProfile_avatarUrlMember1
     * @param ApiOrganizationProfile_avatarUrlMember1|null $value Value to set for the ApiOrganizationProfile_avatarUrlMember1 property.
    */
    public function setApiOrganizationProfileAvatarUrlMember1(?ApiOrganizationProfile_avatarUrlMember1 $value): void {
        $this->apiOrganizationProfile_avatarUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
