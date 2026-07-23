<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentStaffMember_avatarUrlMember1
*/
class TournamentStaffMember_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentStaffMember_avatarUrlMember1|null $tournamentStaffMember_avatarUrlMember1 Composed type representation for type TournamentStaffMember_avatarUrlMember1
    */
    private ?TournamentStaffMember_avatarUrlMember1 $tournamentStaffMember_avatarUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentStaffMember_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentStaffMember_avatarUrl {
        $result = new TournamentStaffMember_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentStaffMemberAvatarUrlMember1(new TournamentStaffMember_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentStaffMemberAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentStaffMemberAvatarUrlMember1());
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
     * Gets the TournamentStaffMember_avatarUrlMember1 property value. Composed type representation for type TournamentStaffMember_avatarUrlMember1
     * @return TournamentStaffMember_avatarUrlMember1|null
    */
    public function getTournamentStaffMemberAvatarUrlMember1(): ?TournamentStaffMember_avatarUrlMember1 {
        return $this->tournamentStaffMember_avatarUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentStaffMemberAvatarUrlMember1());
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
     * Sets the TournamentStaffMember_avatarUrlMember1 property value. Composed type representation for type TournamentStaffMember_avatarUrlMember1
     * @param TournamentStaffMember_avatarUrlMember1|null $value Value to set for the TournamentStaffMember_avatarUrlMember1 property.
    */
    public function setTournamentStaffMemberAvatarUrlMember1(?TournamentStaffMember_avatarUrlMember1 $value): void {
        $this->tournamentStaffMember_avatarUrlMember1 = $value;
    }

}
