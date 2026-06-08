<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserTeamMembership_joinedAtMember1, string
*/
class ApiUserTeamMembership_joinedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserTeamMembership_joinedAtMember1|null $apiUserTeamMembership_joinedAtMember1 Composed type representation for type ApiUserTeamMembership_joinedAtMember1
    */
    private ?ApiUserTeamMembership_joinedAtMember1 $apiUserTeamMembership_joinedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTeamMembership_joinedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTeamMembership_joinedAt {
        $result = new ApiUserTeamMembership_joinedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserTeamMembershipJoinedAtMember1(new ApiUserTeamMembership_joinedAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserTeamMembership_joinedAtMember1 property value. Composed type representation for type ApiUserTeamMembership_joinedAtMember1
     * @return ApiUserTeamMembership_joinedAtMember1|null
    */
    public function getApiUserTeamMembershipJoinedAtMember1(): ?ApiUserTeamMembership_joinedAtMember1 {
        return $this->apiUserTeamMembership_joinedAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserTeamMembershipJoinedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserTeamMembershipJoinedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserTeamMembershipJoinedAtMember1());
        }
    }

    /**
     * Sets the ApiUserTeamMembership_joinedAtMember1 property value. Composed type representation for type ApiUserTeamMembership_joinedAtMember1
     * @param ApiUserTeamMembership_joinedAtMember1|null $value Value to set for the ApiUserTeamMembership_joinedAtMember1 property.
    */
    public function setApiUserTeamMembershipJoinedAtMember1(?ApiUserTeamMembership_joinedAtMember1 $value): void {
        $this->apiUserTeamMembership_joinedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
