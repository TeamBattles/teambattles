<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchTeam_avatarUrlMember1, string
*/
class ApiMatchTeam_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchTeam_avatarUrlMember1|null $apiMatchTeam_avatarUrlMember1 Composed type representation for type ApiMatchTeam_avatarUrlMember1
    */
    private ?ApiMatchTeam_avatarUrlMember1 $apiMatchTeam_avatarUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchTeam_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchTeam_avatarUrl {
        $result = new ApiMatchTeam_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchTeamAvatarUrlMember1(new ApiMatchTeam_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchTeam_avatarUrlMember1 property value. Composed type representation for type ApiMatchTeam_avatarUrlMember1
     * @return ApiMatchTeam_avatarUrlMember1|null
    */
    public function getApiMatchTeamAvatarUrlMember1(): ?ApiMatchTeam_avatarUrlMember1 {
        return $this->apiMatchTeam_avatarUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchTeamAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchTeamAvatarUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchTeamAvatarUrlMember1());
        }
    }

    /**
     * Sets the ApiMatchTeam_avatarUrlMember1 property value. Composed type representation for type ApiMatchTeam_avatarUrlMember1
     * @param ApiMatchTeam_avatarUrlMember1|null $value Value to set for the ApiMatchTeam_avatarUrlMember1 property.
    */
    public function setApiMatchTeamAvatarUrlMember1(?ApiMatchTeam_avatarUrlMember1 $value): void {
        $this->apiMatchTeam_avatarUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
