<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatch_acceptedTeamScoreMember1, int
*/
class GameMatch_acceptedTeamScore implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatch_acceptedTeamScoreMember1|null $gameMatch_acceptedTeamScoreMember1 Composed type representation for type GameMatch_acceptedTeamScoreMember1
    */
    private ?GameMatch_acceptedTeamScoreMember1 $gameMatch_acceptedTeamScoreMember1 = null;
    
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatch_acceptedTeamScore
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatch_acceptedTeamScore {
        $result = new GameMatch_acceptedTeamScore();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setGameMatchAcceptedTeamScoreMember1(new GameMatch_acceptedTeamScoreMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchAcceptedTeamScoreMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchAcceptedTeamScoreMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatch_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatch_acceptedTeamScoreMember1
     * @return GameMatch_acceptedTeamScoreMember1|null
    */
    public function getGameMatchAcceptedTeamScoreMember1(): ?GameMatch_acceptedTeamScoreMember1 {
        return $this->gameMatch_acceptedTeamScoreMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchAcceptedTeamScoreMember1());
        }
    }

    /**
     * Sets the GameMatch_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatch_acceptedTeamScoreMember1
     * @param GameMatch_acceptedTeamScoreMember1|null $value Value to set for the GameMatch_acceptedTeamScoreMember1 property.
    */
    public function setGameMatchAcceptedTeamScoreMember1(?GameMatch_acceptedTeamScoreMember1 $value): void {
        $this->gameMatch_acceptedTeamScoreMember1 = $value;
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

}
