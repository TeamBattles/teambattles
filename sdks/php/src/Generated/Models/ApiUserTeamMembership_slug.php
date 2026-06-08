<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserTeamMembership_slugMember1, string
*/
class ApiUserTeamMembership_slug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserTeamMembership_slugMember1|null $apiUserTeamMembership_slugMember1 Composed type representation for type ApiUserTeamMembership_slugMember1
    */
    private ?ApiUserTeamMembership_slugMember1 $apiUserTeamMembership_slugMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTeamMembership_slug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTeamMembership_slug {
        $result = new ApiUserTeamMembership_slug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserTeamMembershipSlugMember1(new ApiUserTeamMembership_slugMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserTeamMembership_slugMember1 property value. Composed type representation for type ApiUserTeamMembership_slugMember1
     * @return ApiUserTeamMembership_slugMember1|null
    */
    public function getApiUserTeamMembershipSlugMember1(): ?ApiUserTeamMembership_slugMember1 {
        return $this->apiUserTeamMembership_slugMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserTeamMembershipSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserTeamMembershipSlugMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserTeamMembershipSlugMember1());
        }
    }

    /**
     * Sets the ApiUserTeamMembership_slugMember1 property value. Composed type representation for type ApiUserTeamMembership_slugMember1
     * @param ApiUserTeamMembership_slugMember1|null $value Value to set for the ApiUserTeamMembership_slugMember1 property.
    */
    public function setApiUserTeamMembershipSlugMember1(?ApiUserTeamMembership_slugMember1 $value): void {
        $this->apiUserTeamMembership_slugMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
