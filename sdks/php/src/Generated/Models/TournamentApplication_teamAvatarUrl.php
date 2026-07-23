<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentApplication_teamAvatarUrlMember1
*/
class TournamentApplication_teamAvatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentApplication_teamAvatarUrlMember1|null $tournamentApplication_teamAvatarUrlMember1 Composed type representation for type TournamentApplication_teamAvatarUrlMember1
    */
    private ?TournamentApplication_teamAvatarUrlMember1 $tournamentApplication_teamAvatarUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentApplication_teamAvatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentApplication_teamAvatarUrl {
        $result = new TournamentApplication_teamAvatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentApplicationTeamAvatarUrlMember1(new TournamentApplication_teamAvatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentApplicationTeamAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentApplicationTeamAvatarUrlMember1());
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
     * Gets the TournamentApplication_teamAvatarUrlMember1 property value. Composed type representation for type TournamentApplication_teamAvatarUrlMember1
     * @return TournamentApplication_teamAvatarUrlMember1|null
    */
    public function getTournamentApplicationTeamAvatarUrlMember1(): ?TournamentApplication_teamAvatarUrlMember1 {
        return $this->tournamentApplication_teamAvatarUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentApplicationTeamAvatarUrlMember1());
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
     * Sets the TournamentApplication_teamAvatarUrlMember1 property value. Composed type representation for type TournamentApplication_teamAvatarUrlMember1
     * @param TournamentApplication_teamAvatarUrlMember1|null $value Value to set for the TournamentApplication_teamAvatarUrlMember1 property.
    */
    public function setTournamentApplicationTeamAvatarUrlMember1(?TournamentApplication_teamAvatarUrlMember1 $value): void {
        $this->tournamentApplication_teamAvatarUrlMember1 = $value;
    }

}
