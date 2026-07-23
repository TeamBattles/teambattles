<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentInvite_teamAvatarUrlMember1
*/
class TournamentInvite_teamAvatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentInvite_teamAvatarUrlMember1|null $tournamentInvite_teamAvatarUrlMember1 Composed type representation for type TournamentInvite_teamAvatarUrlMember1
    */
    private ?TournamentInvite_teamAvatarUrlMember1 $tournamentInvite_teamAvatarUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentInvite_teamAvatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentInvite_teamAvatarUrl {
        $result = new TournamentInvite_teamAvatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentInviteTeamAvatarUrlMember1(new TournamentInvite_teamAvatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentInviteTeamAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentInviteTeamAvatarUrlMember1());
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
     * Gets the TournamentInvite_teamAvatarUrlMember1 property value. Composed type representation for type TournamentInvite_teamAvatarUrlMember1
     * @return TournamentInvite_teamAvatarUrlMember1|null
    */
    public function getTournamentInviteTeamAvatarUrlMember1(): ?TournamentInvite_teamAvatarUrlMember1 {
        return $this->tournamentInvite_teamAvatarUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentInviteTeamAvatarUrlMember1());
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
     * Sets the TournamentInvite_teamAvatarUrlMember1 property value. Composed type representation for type TournamentInvite_teamAvatarUrlMember1
     * @param TournamentInvite_teamAvatarUrlMember1|null $value Value to set for the TournamentInvite_teamAvatarUrlMember1 property.
    */
    public function setTournamentInviteTeamAvatarUrlMember1(?TournamentInvite_teamAvatarUrlMember1 $value): void {
        $this->tournamentInvite_teamAvatarUrlMember1 = $value;
    }

}
