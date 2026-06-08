<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserProfile_bioMember1, string
*/
class ApiUserProfile_bio implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserProfile_bioMember1|null $apiUserProfile_bioMember1 Composed type representation for type ApiUserProfile_bioMember1
    */
    private ?ApiUserProfile_bioMember1 $apiUserProfile_bioMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserProfile_bio
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserProfile_bio {
        $result = new ApiUserProfile_bio();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserProfileBioMember1(new ApiUserProfile_bioMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserProfile_bioMember1 property value. Composed type representation for type ApiUserProfile_bioMember1
     * @return ApiUserProfile_bioMember1|null
    */
    public function getApiUserProfileBioMember1(): ?ApiUserProfile_bioMember1 {
        return $this->apiUserProfile_bioMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserProfileBioMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserProfileBioMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserProfileBioMember1());
        }
    }

    /**
     * Sets the ApiUserProfile_bioMember1 property value. Composed type representation for type ApiUserProfile_bioMember1
     * @param ApiUserProfile_bioMember1|null $value Value to set for the ApiUserProfile_bioMember1 property.
    */
    public function setApiUserProfileBioMember1(?ApiUserProfile_bioMember1 $value): void {
        $this->apiUserProfile_bioMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
