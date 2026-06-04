<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatch_creatorTeamScoreMember1, int
*/
class GameMatch_creatorTeamScore implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatch_creatorTeamScoreMember1|null $gameMatch_creatorTeamScoreMember1 Composed type representation for type GameMatch_creatorTeamScoreMember1
    */
    private ?GameMatch_creatorTeamScoreMember1 $gameMatch_creatorTeamScoreMember1 = null;
    
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatch_creatorTeamScore
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatch_creatorTeamScore {
        $result = new GameMatch_creatorTeamScore();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setGameMatchCreatorTeamScoreMember1(new GameMatch_creatorTeamScoreMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchCreatorTeamScoreMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchCreatorTeamScoreMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatch_creatorTeamScoreMember1 property value. Composed type representation for type GameMatch_creatorTeamScoreMember1
     * @return GameMatch_creatorTeamScoreMember1|null
    */
    public function getGameMatchCreatorTeamScoreMember1(): ?GameMatch_creatorTeamScoreMember1 {
        return $this->gameMatch_creatorTeamScoreMember1;
    }

    /**
     * Gets the integer property value. Composed type representation for type int
     * @return int|null
    */
    public function getInteger(): ?int {
        return $this->integer;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getGameMatchCreatorTeamScoreMember1());
        }
    }

    /**
     * Sets the GameMatch_creatorTeamScoreMember1 property value. Composed type representation for type GameMatch_creatorTeamScoreMember1
     * @param GameMatch_creatorTeamScoreMember1|null $value Value to set for the GameMatch_creatorTeamScoreMember1 property.
    */
    public function setGameMatchCreatorTeamScoreMember1(?GameMatch_creatorTeamScoreMember1 $value): void {
        $this->gameMatch_creatorTeamScoreMember1 = $value;
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

}
