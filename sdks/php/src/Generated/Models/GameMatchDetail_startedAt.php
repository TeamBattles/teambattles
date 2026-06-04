<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatchDetail_startedAtMember1, string
*/
class GameMatchDetail_startedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatchDetail_startedAtMember1|null $gameMatchDetail_startedAtMember1 Composed type representation for type GameMatchDetail_startedAtMember1
    */
    private ?GameMatchDetail_startedAtMember1 $gameMatchDetail_startedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchDetail_startedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchDetail_startedAt {
        $result = new GameMatchDetail_startedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameMatchDetailStartedAtMember1(new GameMatchDetail_startedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchDetailStartedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchDetailStartedAtMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatchDetail_startedAtMember1 property value. Composed type representation for type GameMatchDetail_startedAtMember1
     * @return GameMatchDetail_startedAtMember1|null
    */
    public function getGameMatchDetailStartedAtMember1(): ?GameMatchDetail_startedAtMember1 {
        return $this->gameMatchDetail_startedAtMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchDetailStartedAtMember1());
        }
    }

    /**
     * Sets the GameMatchDetail_startedAtMember1 property value. Composed type representation for type GameMatchDetail_startedAtMember1
     * @param GameMatchDetail_startedAtMember1|null $value Value to set for the GameMatchDetail_startedAtMember1 property.
    */
    public function setGameMatchDetailStartedAtMember1(?GameMatchDetail_startedAtMember1 $value): void {
        $this->gameMatchDetail_startedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
