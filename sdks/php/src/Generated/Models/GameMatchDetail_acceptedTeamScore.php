<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatchDetail_acceptedTeamScoreMember1, int
*/
class GameMatchDetail_acceptedTeamScore implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatchDetail_acceptedTeamScoreMember1|null $gameMatchDetail_acceptedTeamScoreMember1 Composed type representation for type GameMatchDetail_acceptedTeamScoreMember1
    */
    private ?GameMatchDetail_acceptedTeamScoreMember1 $gameMatchDetail_acceptedTeamScoreMember1 = null;
    
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchDetail_acceptedTeamScore
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchDetail_acceptedTeamScore {
        $result = new GameMatchDetail_acceptedTeamScore();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setGameMatchDetailAcceptedTeamScoreMember1(new GameMatchDetail_acceptedTeamScoreMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchDetailAcceptedTeamScoreMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchDetailAcceptedTeamScoreMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatchDetail_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatchDetail_acceptedTeamScoreMember1
     * @return GameMatchDetail_acceptedTeamScoreMember1|null
    */
    public function getGameMatchDetailAcceptedTeamScoreMember1(): ?GameMatchDetail_acceptedTeamScoreMember1 {
        return $this->gameMatchDetail_acceptedTeamScoreMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchDetailAcceptedTeamScoreMember1());
        }
    }

    /**
     * Sets the GameMatchDetail_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatchDetail_acceptedTeamScoreMember1
     * @param GameMatchDetail_acceptedTeamScoreMember1|null $value Value to set for the GameMatchDetail_acceptedTeamScoreMember1 property.
    */
    public function setGameMatchDetailAcceptedTeamScoreMember1(?GameMatchDetail_acceptedTeamScoreMember1 $value): void {
        $this->gameMatchDetail_acceptedTeamScoreMember1 = $value;
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

}
