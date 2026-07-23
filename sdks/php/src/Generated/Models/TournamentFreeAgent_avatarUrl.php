<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentFreeAgent_avatarUrlMember1
*/
class TournamentFreeAgent_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentFreeAgent_avatarUrlMember1|null $tournamentFreeAgent_avatarUrlMember1 Composed type representation for type TournamentFreeAgent_avatarUrlMember1
    */
    private ?TournamentFreeAgent_avatarUrlMember1 $tournamentFreeAgent_avatarUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentFreeAgent_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentFreeAgent_avatarUrl {
        $result = new TournamentFreeAgent_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentFreeAgentAvatarUrlMember1(new TournamentFreeAgent_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentFreeAgentAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentFreeAgentAvatarUrlMember1());
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
     * Gets the TournamentFreeAgent_avatarUrlMember1 property value. Composed type representation for type TournamentFreeAgent_avatarUrlMember1
     * @return TournamentFreeAgent_avatarUrlMember1|null
    */
    public function getTournamentFreeAgentAvatarUrlMember1(): ?TournamentFreeAgent_avatarUrlMember1 {
        return $this->tournamentFreeAgent_avatarUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentFreeAgentAvatarUrlMember1());
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
     * Sets the TournamentFreeAgent_avatarUrlMember1 property value. Composed type representation for type TournamentFreeAgent_avatarUrlMember1
     * @param TournamentFreeAgent_avatarUrlMember1|null $value Value to set for the TournamentFreeAgent_avatarUrlMember1 property.
    */
    public function setTournamentFreeAgentAvatarUrlMember1(?TournamentFreeAgent_avatarUrlMember1 $value): void {
        $this->tournamentFreeAgent_avatarUrlMember1 = $value;
    }

}
