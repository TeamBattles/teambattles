<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserOrganizationMembership_joinedAtMember1, string
*/
class ApiUserOrganizationMembership_joinedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserOrganizationMembership_joinedAtMember1|null $apiUserOrganizationMembership_joinedAtMember1 Composed type representation for type ApiUserOrganizationMembership_joinedAtMember1
    */
    private ?ApiUserOrganizationMembership_joinedAtMember1 $apiUserOrganizationMembership_joinedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserOrganizationMembership_joinedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserOrganizationMembership_joinedAt {
        $result = new ApiUserOrganizationMembership_joinedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserOrganizationMembershipJoinedAtMember1(new ApiUserOrganizationMembership_joinedAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserOrganizationMembership_joinedAtMember1 property value. Composed type representation for type ApiUserOrganizationMembership_joinedAtMember1
     * @return ApiUserOrganizationMembership_joinedAtMember1|null
    */
    public function getApiUserOrganizationMembershipJoinedAtMember1(): ?ApiUserOrganizationMembership_joinedAtMember1 {
        return $this->apiUserOrganizationMembership_joinedAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserOrganizationMembershipJoinedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserOrganizationMembershipJoinedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserOrganizationMembershipJoinedAtMember1());
        }
    }

    /**
     * Sets the ApiUserOrganizationMembership_joinedAtMember1 property value. Composed type representation for type ApiUserOrganizationMembership_joinedAtMember1
     * @param ApiUserOrganizationMembership_joinedAtMember1|null $value Value to set for the ApiUserOrganizationMembership_joinedAtMember1 property.
    */
    public function setApiUserOrganizationMembershipJoinedAtMember1(?ApiUserOrganizationMembership_joinedAtMember1 $value): void {
        $this->apiUserOrganizationMembership_joinedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
