<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamProfile_bannerUrlMember1, string
*/
class ApiTeamProfile_bannerUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamProfile_bannerUrlMember1|null $apiTeamProfile_bannerUrlMember1 Composed type representation for type ApiTeamProfile_bannerUrlMember1
    */
    private ?ApiTeamProfile_bannerUrlMember1 $apiTeamProfile_bannerUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamProfile_bannerUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamProfile_bannerUrl {
        $result = new ApiTeamProfile_bannerUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamProfileBannerUrlMember1(new ApiTeamProfile_bannerUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamProfile_bannerUrlMember1 property value. Composed type representation for type ApiTeamProfile_bannerUrlMember1
     * @return ApiTeamProfile_bannerUrlMember1|null
    */
    public function getApiTeamProfileBannerUrlMember1(): ?ApiTeamProfile_bannerUrlMember1 {
        return $this->apiTeamProfile_bannerUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamProfileBannerUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamProfileBannerUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamProfileBannerUrlMember1());
        }
    }

    /**
     * Sets the ApiTeamProfile_bannerUrlMember1 property value. Composed type representation for type ApiTeamProfile_bannerUrlMember1
     * @param ApiTeamProfile_bannerUrlMember1|null $value Value to set for the ApiTeamProfile_bannerUrlMember1 property.
    */
    public function setApiTeamProfileBannerUrlMember1(?ApiTeamProfile_bannerUrlMember1 $value): void {
        $this->apiTeamProfile_bannerUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
