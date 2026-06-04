<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatch_startedAtMember1, string
*/
class GameMatch_startedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatch_startedAtMember1|null $gameMatch_startedAtMember1 Composed type representation for type GameMatch_startedAtMember1
    */
    private ?GameMatch_startedAtMember1 $gameMatch_startedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatch_startedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatch_startedAt {
        $result = new GameMatch_startedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameMatchStartedAtMember1(new GameMatch_startedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchStartedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchStartedAtMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatch_startedAtMember1 property value. Composed type representation for type GameMatch_startedAtMember1
     * @return GameMatch_startedAtMember1|null
    */
    public function getGameMatchStartedAtMember1(): ?GameMatch_startedAtMember1 {
        return $this->gameMatch_startedAtMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchStartedAtMember1());
        }
    }

    /**
     * Sets the GameMatch_startedAtMember1 property value. Composed type representation for type GameMatch_startedAtMember1
     * @param GameMatch_startedAtMember1|null $value Value to set for the GameMatch_startedAtMember1 property.
    */
    public function setGameMatchStartedAtMember1(?GameMatch_startedAtMember1 $value): void {
        $this->gameMatch_startedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
