<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentParticipant_teamAvatarUrlMember1
*/
class TournamentParticipant_teamAvatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentParticipant_teamAvatarUrlMember1|null $tournamentParticipant_teamAvatarUrlMember1 Composed type representation for type TournamentParticipant_teamAvatarUrlMember1
    */
    private ?TournamentParticipant_teamAvatarUrlMember1 $tournamentParticipant_teamAvatarUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentParticipant_teamAvatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentParticipant_teamAvatarUrl {
        $result = new TournamentParticipant_teamAvatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentParticipantTeamAvatarUrlMember1(new TournamentParticipant_teamAvatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentParticipantTeamAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentParticipantTeamAvatarUrlMember1());
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
     * Gets the TournamentParticipant_teamAvatarUrlMember1 property value. Composed type representation for type TournamentParticipant_teamAvatarUrlMember1
     * @return TournamentParticipant_teamAvatarUrlMember1|null
    */
    public function getTournamentParticipantTeamAvatarUrlMember1(): ?TournamentParticipant_teamAvatarUrlMember1 {
        return $this->tournamentParticipant_teamAvatarUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentParticipantTeamAvatarUrlMember1());
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
     * Sets the TournamentParticipant_teamAvatarUrlMember1 property value. Composed type representation for type TournamentParticipant_teamAvatarUrlMember1
     * @param TournamentParticipant_teamAvatarUrlMember1|null $value Value to set for the TournamentParticipant_teamAvatarUrlMember1 property.
    */
    public function setTournamentParticipantTeamAvatarUrlMember1(?TournamentParticipant_teamAvatarUrlMember1 $value): void {
        $this->tournamentParticipant_teamAvatarUrlMember1 = $value;
    }

}
