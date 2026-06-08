<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes LeaderboardRankResponse_gameSlugMember1, string
*/
class LeaderboardRankResponse_gameSlug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var LeaderboardRankResponse_gameSlugMember1|null $leaderboardRankResponse_gameSlugMember1 Composed type representation for type LeaderboardRankResponse_gameSlugMember1
    */
    private ?LeaderboardRankResponse_gameSlugMember1 $leaderboardRankResponse_gameSlugMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeaderboardRankResponse_gameSlug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeaderboardRankResponse_gameSlug {
        $result = new LeaderboardRankResponse_gameSlug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setLeaderboardRankResponseGameSlugMember1(new LeaderboardRankResponse_gameSlugMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getLeaderboardRankResponseGameSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getLeaderboardRankResponseGameSlugMember1());
        }
        return [];
    }

    /**
     * Gets the LeaderboardRankResponse_gameSlugMember1 property value. Composed type representation for type LeaderboardRankResponse_gameSlugMember1
     * @return LeaderboardRankResponse_gameSlugMember1|null
    */
    public function getLeaderboardRankResponseGameSlugMember1(): ?LeaderboardRankResponse_gameSlugMember1 {
        return $this->leaderboardRankResponse_gameSlugMember1;
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
            $writer->writeObjectValue(null, $this->getLeaderboardRankResponseGameSlugMember1());
        }
    }

    /**
     * Sets the LeaderboardRankResponse_gameSlugMember1 property value. Composed type representation for type LeaderboardRankResponse_gameSlugMember1
     * @param LeaderboardRankResponse_gameSlugMember1|null $value Value to set for the LeaderboardRankResponse_gameSlugMember1 property.
    */
    public function setLeaderboardRankResponseGameSlugMember1(?LeaderboardRankResponse_gameSlugMember1 $value): void {
        $this->leaderboardRankResponse_gameSlugMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
