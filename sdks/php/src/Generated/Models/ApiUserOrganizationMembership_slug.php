<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserOrganizationMembership_slugMember1, string
*/
class ApiUserOrganizationMembership_slug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserOrganizationMembership_slugMember1|null $apiUserOrganizationMembership_slugMember1 Composed type representation for type ApiUserOrganizationMembership_slugMember1
    */
    private ?ApiUserOrganizationMembership_slugMember1 $apiUserOrganizationMembership_slugMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserOrganizationMembership_slug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserOrganizationMembership_slug {
        $result = new ApiUserOrganizationMembership_slug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserOrganizationMembershipSlugMember1(new ApiUserOrganizationMembership_slugMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserOrganizationMembership_slugMember1 property value. Composed type representation for type ApiUserOrganizationMembership_slugMember1
     * @return ApiUserOrganizationMembership_slugMember1|null
    */
    public function getApiUserOrganizationMembershipSlugMember1(): ?ApiUserOrganizationMembership_slugMember1 {
        return $this->apiUserOrganizationMembership_slugMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserOrganizationMembershipSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserOrganizationMembershipSlugMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserOrganizationMembershipSlugMember1());
        }
    }

    /**
     * Sets the ApiUserOrganizationMembership_slugMember1 property value. Composed type representation for type ApiUserOrganizationMembership_slugMember1
     * @param ApiUserOrganizationMembership_slugMember1|null $value Value to set for the ApiUserOrganizationMembership_slugMember1 property.
    */
    public function setApiUserOrganizationMembershipSlugMember1(?ApiUserOrganizationMembership_slugMember1 $value): void {
        $this->apiUserOrganizationMembership_slugMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
