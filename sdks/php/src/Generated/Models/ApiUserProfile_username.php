<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserProfile_usernameMember1, string
*/
class ApiUserProfile_username implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserProfile_usernameMember1|null $apiUserProfile_usernameMember1 Composed type representation for type ApiUserProfile_usernameMember1
    */
    private ?ApiUserProfile_usernameMember1 $apiUserProfile_usernameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserProfile_username
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserProfile_username {
        $result = new ApiUserProfile_username();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserProfileUsernameMember1(new ApiUserProfile_usernameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserProfile_usernameMember1 property value. Composed type representation for type ApiUserProfile_usernameMember1
     * @return ApiUserProfile_usernameMember1|null
    */
    public function getApiUserProfileUsernameMember1(): ?ApiUserProfile_usernameMember1 {
        return $this->apiUserProfile_usernameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserProfileUsernameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserProfileUsernameMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserProfileUsernameMember1());
        }
    }

    /**
     * Sets the ApiUserProfile_usernameMember1 property value. Composed type representation for type ApiUserProfile_usernameMember1
     * @param ApiUserProfile_usernameMember1|null $value Value to set for the ApiUserProfile_usernameMember1 property.
    */
    public function setApiUserProfileUsernameMember1(?ApiUserProfile_usernameMember1 $value): void {
        $this->apiUserProfile_usernameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
