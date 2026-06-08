<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TeamLeaderboardEntry_gameSlugMember1
*/
class TeamLeaderboardEntry_gameSlug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TeamLeaderboardEntry_gameSlugMember1|null $teamLeaderboardEntry_gameSlugMember1 Composed type representation for type TeamLeaderboardEntry_gameSlugMember1
    */
    private ?TeamLeaderboardEntry_gameSlugMember1 $teamLeaderboardEntry_gameSlugMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TeamLeaderboardEntry_gameSlug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TeamLeaderboardEntry_gameSlug {
        $result = new TeamLeaderboardEntry_gameSlug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTeamLeaderboardEntryGameSlugMember1(new TeamLeaderboardEntry_gameSlugMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTeamLeaderboardEntryGameSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTeamLeaderboardEntryGameSlugMember1());
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
     * Gets the TeamLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type TeamLeaderboardEntry_gameSlugMember1
     * @return TeamLeaderboardEntry_gameSlugMember1|null
    */
    public function getTeamLeaderboardEntryGameSlugMember1(): ?TeamLeaderboardEntry_gameSlugMember1 {
        return $this->teamLeaderboardEntry_gameSlugMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTeamLeaderboardEntryGameSlugMember1());
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
     * Sets the TeamLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type TeamLeaderboardEntry_gameSlugMember1
     * @param TeamLeaderboardEntry_gameSlugMember1|null $value Value to set for the TeamLeaderboardEntry_gameSlugMember1 property.
    */
    public function setTeamLeaderboardEntryGameSlugMember1(?TeamLeaderboardEntry_gameSlugMember1 $value): void {
        $this->teamLeaderboardEntry_gameSlugMember1 = $value;
    }

}
