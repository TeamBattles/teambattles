<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamProfile_avatarUrlMember1, string
*/
class ApiTeamProfile_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamProfile_avatarUrlMember1|null $apiTeamProfile_avatarUrlMember1 Composed type representation for type ApiTeamProfile_avatarUrlMember1
    */
    private ?ApiTeamProfile_avatarUrlMember1 $apiTeamProfile_avatarUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamProfile_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamProfile_avatarUrl {
        $result = new ApiTeamProfile_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamProfileAvatarUrlMember1(new ApiTeamProfile_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamProfile_avatarUrlMember1 property value. Composed type representation for type ApiTeamProfile_avatarUrlMember1
     * @return ApiTeamProfile_avatarUrlMember1|null
    */
    public function getApiTeamProfileAvatarUrlMember1(): ?ApiTeamProfile_avatarUrlMember1 {
        return $this->apiTeamProfile_avatarUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamProfileAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamProfileAvatarUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamProfileAvatarUrlMember1());
        }
    }

    /**
     * Sets the ApiTeamProfile_avatarUrlMember1 property value. Composed type representation for type ApiTeamProfile_avatarUrlMember1
     * @param ApiTeamProfile_avatarUrlMember1|null $value Value to set for the ApiTeamProfile_avatarUrlMember1 property.
    */
    public function setApiTeamProfileAvatarUrlMember1(?ApiTeamProfile_avatarUrlMember1 $value): void {
        $this->apiTeamProfile_avatarUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
