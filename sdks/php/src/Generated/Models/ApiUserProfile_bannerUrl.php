<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserProfile_bannerUrlMember1, string
*/
class ApiUserProfile_bannerUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserProfile_bannerUrlMember1|null $apiUserProfile_bannerUrlMember1 Composed type representation for type ApiUserProfile_bannerUrlMember1
    */
    private ?ApiUserProfile_bannerUrlMember1 $apiUserProfile_bannerUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserProfile_bannerUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserProfile_bannerUrl {
        $result = new ApiUserProfile_bannerUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserProfileBannerUrlMember1(new ApiUserProfile_bannerUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserProfile_bannerUrlMember1 property value. Composed type representation for type ApiUserProfile_bannerUrlMember1
     * @return ApiUserProfile_bannerUrlMember1|null
    */
    public function getApiUserProfileBannerUrlMember1(): ?ApiUserProfile_bannerUrlMember1 {
        return $this->apiUserProfile_bannerUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserProfileBannerUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserProfileBannerUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserProfileBannerUrlMember1());
        }
    }

    /**
     * Sets the ApiUserProfile_bannerUrlMember1 property value. Composed type representation for type ApiUserProfile_bannerUrlMember1
     * @param ApiUserProfile_bannerUrlMember1|null $value Value to set for the ApiUserProfile_bannerUrlMember1 property.
    */
    public function setApiUserProfileBannerUrlMember1(?ApiUserProfile_bannerUrlMember1 $value): void {
        $this->apiUserProfile_bannerUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
