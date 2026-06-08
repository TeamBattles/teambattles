<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, Team_avatarUrlMember1
*/
class Team_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var Team_avatarUrlMember1|null $team_avatarUrlMember1 Composed type representation for type Team_avatarUrlMember1
    */
    private ?Team_avatarUrlMember1 $team_avatarUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return Team_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): Team_avatarUrl {
        $result = new Team_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTeamAvatarUrlMember1(new Team_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTeamAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTeamAvatarUrlMember1());
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
     * Gets the Team_avatarUrlMember1 property value. Composed type representation for type Team_avatarUrlMember1
     * @return Team_avatarUrlMember1|null
    */
    public function getTeamAvatarUrlMember1(): ?Team_avatarUrlMember1 {
        return $this->team_avatarUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTeamAvatarUrlMember1());
        }
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

    /**
     * Sets the Team_avatarUrlMember1 property value. Composed type representation for type Team_avatarUrlMember1
     * @param Team_avatarUrlMember1|null $value Value to set for the Team_avatarUrlMember1 property.
    */
    public function setTeamAvatarUrlMember1(?Team_avatarUrlMember1 $value): void {
        $this->team_avatarUrlMember1 = $value;
    }

}
