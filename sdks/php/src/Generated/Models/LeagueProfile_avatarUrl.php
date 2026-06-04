<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes LeagueProfile_avatarUrlMember1, string
*/
class LeagueProfile_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var LeagueProfile_avatarUrlMember1|null $leagueProfile_avatarUrlMember1 Composed type representation for type LeagueProfile_avatarUrlMember1
    */
    private ?LeagueProfile_avatarUrlMember1 $leagueProfile_avatarUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueProfile_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueProfile_avatarUrl {
        $result = new LeagueProfile_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setLeagueProfileAvatarUrlMember1(new LeagueProfile_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getLeagueProfileAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getLeagueProfileAvatarUrlMember1());
        }
        return [];
    }

    /**
     * Gets the LeagueProfile_avatarUrlMember1 property value. Composed type representation for type LeagueProfile_avatarUrlMember1
     * @return LeagueProfile_avatarUrlMember1|null
    */
    public function getLeagueProfileAvatarUrlMember1(): ?LeagueProfile_avatarUrlMember1 {
        return $this->leagueProfile_avatarUrlMember1;
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
            $writer->writeObjectValue(null, $this->getLeagueProfileAvatarUrlMember1());
        }
    }

    /**
     * Sets the LeagueProfile_avatarUrlMember1 property value. Composed type representation for type LeagueProfile_avatarUrlMember1
     * @param LeagueProfile_avatarUrlMember1|null $value Value to set for the LeagueProfile_avatarUrlMember1 property.
    */
    public function setLeagueProfileAvatarUrlMember1(?LeagueProfile_avatarUrlMember1 $value): void {
        $this->leagueProfile_avatarUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
