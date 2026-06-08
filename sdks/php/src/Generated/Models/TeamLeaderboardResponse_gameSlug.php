<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TeamLeaderboardResponse_gameSlugMember1
*/
class TeamLeaderboardResponse_gameSlug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TeamLeaderboardResponse_gameSlugMember1|null $teamLeaderboardResponse_gameSlugMember1 Composed type representation for type TeamLeaderboardResponse_gameSlugMember1
    */
    private ?TeamLeaderboardResponse_gameSlugMember1 $teamLeaderboardResponse_gameSlugMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TeamLeaderboardResponse_gameSlug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TeamLeaderboardResponse_gameSlug {
        $result = new TeamLeaderboardResponse_gameSlug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTeamLeaderboardResponseGameSlugMember1(new TeamLeaderboardResponse_gameSlugMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTeamLeaderboardResponseGameSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTeamLeaderboardResponseGameSlugMember1());
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
     * Gets the TeamLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type TeamLeaderboardResponse_gameSlugMember1
     * @return TeamLeaderboardResponse_gameSlugMember1|null
    */
    public function getTeamLeaderboardResponseGameSlugMember1(): ?TeamLeaderboardResponse_gameSlugMember1 {
        return $this->teamLeaderboardResponse_gameSlugMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTeamLeaderboardResponseGameSlugMember1());
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
     * Sets the TeamLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type TeamLeaderboardResponse_gameSlugMember1
     * @param TeamLeaderboardResponse_gameSlugMember1|null $value Value to set for the TeamLeaderboardResponse_gameSlugMember1 property.
    */
    public function setTeamLeaderboardResponseGameSlugMember1(?TeamLeaderboardResponse_gameSlugMember1 $value): void {
        $this->teamLeaderboardResponse_gameSlugMember1 = $value;
    }

}
