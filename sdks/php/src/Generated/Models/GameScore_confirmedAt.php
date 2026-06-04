<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameScore_confirmedAtMember1, string
*/
class GameScore_confirmedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameScore_confirmedAtMember1|null $gameScore_confirmedAtMember1 Composed type representation for type GameScore_confirmedAtMember1
    */
    private ?GameScore_confirmedAtMember1 $gameScore_confirmedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameScore_confirmedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameScore_confirmedAt {
        $result = new GameScore_confirmedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameScoreConfirmedAtMember1(new GameScore_confirmedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameScoreConfirmedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameScoreConfirmedAtMember1());
        }
        return [];
    }

    /**
     * Gets the GameScore_confirmedAtMember1 property value. Composed type representation for type GameScore_confirmedAtMember1
     * @return GameScore_confirmedAtMember1|null
    */
    public function getGameScoreConfirmedAtMember1(): ?GameScore_confirmedAtMember1 {
        return $this->gameScore_confirmedAtMember1;
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
            $writer->writeObjectValue(null, $this->getGameScoreConfirmedAtMember1());
        }
    }

    /**
     * Sets the GameScore_confirmedAtMember1 property value. Composed type representation for type GameScore_confirmedAtMember1
     * @param GameScore_confirmedAtMember1|null $value Value to set for the GameScore_confirmedAtMember1 property.
    */
    public function setGameScoreConfirmedAtMember1(?GameScore_confirmedAtMember1 $value): void {
        $this->gameScore_confirmedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
